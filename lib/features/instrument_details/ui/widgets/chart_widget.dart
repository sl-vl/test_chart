import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_chart/features/instrument_details/enums/time_intervals.dart';
import 'package:test_chart/features/instrument_details/models/history_data_item.dart';
import 'package:test_chart/features/instrument_details/state/chart_config/chart_config_cubit.dart';
import 'package:test_chart/injection.dart';
import 'package:test_chart/resources/app_colors.dart';

class ChartsWidget extends StatefulWidget {
  const ChartsWidget({
    Key? key,
    required this.allDataList,
  }) : super(key: key);

  final List<HistoryDataItem> allDataList;

  @override
  State<ChartsWidget> createState() => _ChartsWidgetState();
}

class _ChartsWidgetState extends State<ChartsWidget> {
  late final ChartConfigCubit _cubit;

  @override
  void initState() {
    super.initState();
    _cubit = getIt<ChartConfigCubit>()..prepareData(widget.allDataList);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _cubit,
      child: BlocBuilder<ChartConfigCubit, ChartConfigState>(
        builder: (context, state) {
          return Expanded(
            child: Column(
              children: [
                const SizedBox(
                  height: 12,
                ),
                _Chart(
                  filteredDataList: state.filteredDataList,
                  interval: state.interval,
                ),
                const SizedBox(
                  height: 24,
                ),
                const Spacer(),
                _BottomIntervalPicker(
                  state: state,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _BottomIntervalPicker extends StatelessWidget {
  const _BottomIntervalPicker({
    Key? key,
    required this.state,
  }) : super(key: key);

  final ChartConfigState state;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.lightGrey,
        border: const Border(
          top: BorderSide(
            width: 0.3,
            color: AppColors.grey,
          ),
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Row(
            children: [
              _RangeSelector(
                label: '1M',
                current: state.interval,
                range: TimeInterval.month,
                onTap: () => context
                    .read<ChartConfigCubit>()
                    .filterData(TimeInterval.month),
              ),
              const SizedBox(
                width: 8,
              ),
              _RangeSelector(
                label: '3M',
                current: state.interval,
                range: TimeInterval.threeMonth,
                onTap: () => context
                    .read<ChartConfigCubit>()
                    .filterData(TimeInterval.threeMonth),
              ),
              const SizedBox(
                width: 8,
              ),
              _RangeSelector(
                label: '6M',
                current: state.interval,
                range: TimeInterval.sixMonth,
                onTap: () => context
                    .read<ChartConfigCubit>()
                    .filterData(TimeInterval.sixMonth),
              ),
              const SizedBox(
                width: 8,
              ),
              _RangeSelector(
                label: '1Y',
                current: state.interval,
                range: TimeInterval.year,
                onTap: () => context
                    .read<ChartConfigCubit>()
                    .filterData(TimeInterval.year),
              ),
              const SizedBox(
                width: 8,
              ),
              _RangeSelector(
                label: 'ALL',
                current: state.interval,
                range: TimeInterval.all,
                onTap: () => context
                    .read<ChartConfigCubit>()
                    .filterData(TimeInterval.all),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _RangeSelector extends StatelessWidget {
  final String label;
  final TimeInterval range;
  final TimeInterval current;
  final VoidCallback onTap;

  const _RangeSelector({
    Key? key,
    required this.label,
    required this.range,
    required this.current,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isSelected = range == current;
    final screenWidth = MediaQuery.of(context).size.width;
    final buttonWidth = (screenWidth - 72) / 5;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: buttonWidth,
        decoration: BoxDecoration(
            color: AppColors.lightGrey,
            border: isSelected
                ? const Border(
                    top: BorderSide(
                      width: 3,
                      color: AppColors.green,
                    ),
                  )
                : null),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
            ),
            child: Text(
              label,
              style: TextStyle(
                color: AppColors.green,
                fontSize: 16,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Chart extends StatelessWidget {
  const _Chart({
    Key? key,
    required this.filteredDataList,
    required this.interval,
  }) : super(key: key);

  final List<HistoryDataItem> filteredDataList;
  final TimeInterval interval;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      height: screenHeight / 2,
      child: LineChart(
        data,
        swapAnimationDuration: const Duration(milliseconds: 250),
      ),
    );
  }

  double get maxY {
    final listOfValues = filteredDataList.map((e) => e.price.ceil()).toList();
    return listOfValues
        .reduce((curr, next) => curr > next ? curr : next)
        .toDouble();
  }

  double xPos(HistoryDataItem item) {
    final oldestItem = filteredDataList
        .reduce((curr, next) => curr.date.isBefore(next.date) ? curr : next);
    final diffInDays = item.date.difference(oldestItem.date).inDays;

    return diffInDays.toDouble();
  }

  double get maxX {
    final today = DateTime.now();
    final oldestItem = filteredDataList
        .reduce((curr, next) => curr.date.isBefore(next.date) ? curr : next);

    final diffInDays = today.difference(oldestItem.date).inDays;

    return diffInDays.toDouble();
  }

  LineChartData get data => LineChartData(
        lineTouchData: lineTouchData1,
        gridData: gridData,
        titlesData: titlesData,
        borderData: borderData,
        lineBarsData: lineBarsData,
        minX: 0,
        maxX: maxX,
        maxY: maxY,
        minY: 0,
      );

  LineTouchData get lineTouchData1 => LineTouchData(
        handleBuiltInTouches: true,
        touchTooltipData: LineTouchTooltipData(
          tooltipBgColor: AppColors.lightGrey,
        ),
      );

  FlTitlesData get titlesData => FlTitlesData(
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      );

  FlBorderData get borderData => FlBorderData(
        show: true,
        border: Border.all(
          color: Colors.transparent,
        ),
      );

  List<LineChartBarData> get lineBarsData => [
        lineChartBarData,
      ];

  List<FlSpot> get spots {
    return filteredDataList.map((e) {
      return FlSpot(
        xPos(filteredDataList[filteredDataList.indexOf(e)]),
        e.price,
      );
    }).toList();
  }

  LineChartBarData get lineChartBarData => LineChartBarData(
        isCurved: true,
        color: AppColors.green,
        barWidth: 8,
        isStrokeCapRound: true,
        dotData: FlDotData(show: false),
        belowBarData: BarAreaData(show: false),
        spots: spots,
      );

  FlGridData get gridData => FlGridData(show: false);
}
