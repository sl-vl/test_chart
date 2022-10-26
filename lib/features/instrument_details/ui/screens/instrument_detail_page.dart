import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_chart/features/instrument_details/state/instrument_details/instrument_detail_cubit.dart';
import 'package:test_chart/features/instrument_details/ui/widgets/chart_widget.dart';
import 'package:test_chart/features/instrument_details/ui/widgets/instrument_header_widget.dart';
import 'package:test_chart/injection.dart';
import 'package:test_chart/resources/app_colors.dart';
import 'package:test_chart/resources/app_text_styles.dart';

class InstrumentDetailPage extends StatefulWidget {
  final String isin;

  const InstrumentDetailPage({
    Key? key,
    required this.isin,
  }) : super(key: key);

  @override
  State<InstrumentDetailPage> createState() => _InstrumentDetailPageState();
}

class _InstrumentDetailPageState extends State<InstrumentDetailPage> {
  late final InstrumentDetailCubit _cubit;

  @override
  void initState() {
    super.initState();
    _cubit = getIt<InstrumentDetailCubit>()..prepareInfo(widget.isin);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _cubit,
      child: BlocBuilder<InstrumentDetailCubit, InstrumentDetailState>(
        builder: (context, state) {
          return Scaffold(
            body: SafeArea(
              bottom: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 24,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Row(
                      children: [
                        const SizedBox(width: 20),
                        const Icon(
                          Icons.arrow_back_ios,
                          size: 18,
                        ),
                        Text(
                          'Back',
                          style: AppTextStyles.n16,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Expanded(
                    child: state.instrument.maybeWhen(
                      loading: () {
                        return const Center(
                          child: CircularProgressIndicator(
                            color: AppColors.green,
                          ),
                        );
                      },
                      error: () {
                        return Center(
                          child: Text(
                            'Error occurred while getting instrument',
                            textAlign: TextAlign.center,
                            style: AppTextStyles.n14.grey,
                          ),
                        );
                      },
                      success: (instr) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InstrumentHeaderWidget(
                              data: instr,
                            ),
                            ChartsWidget(
                              allDataList: instr.historyData.reversed.toList(),
                            ),
                          ],
                        );
                      },
                      orElse: () {
                        return Container();
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
