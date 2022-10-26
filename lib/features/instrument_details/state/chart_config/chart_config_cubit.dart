import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:test_chart/features/instrument_details/enums/time_intervals.dart';
import 'package:test_chart/features/instrument_details/models/history_data_item.dart';

part 'chart_config_cubit.freezed.dart';
part 'chart_config_state.dart';

@injectable
class ChartConfigCubit extends Cubit<ChartConfigState> {
  ChartConfigCubit() : super(ChartConfigState.initial());

  Future<void> prepareData(List<HistoryDataItem> allDataList) async {
    emit(
      state.copyWith(
        allDataList: allDataList,
        filteredDataList: allDataList,
        interval: TimeInterval.all,
      ),
    );
  }

  Future<void> filterData(TimeInterval interval) async {
    final today = DateTime.now();
    List<HistoryDataItem> filteredDataList = [];

    if (interval == TimeInterval.month) {
      filteredDataList = state.allDataList
          .where((item) => today.difference(item.date).inDays <= 30)
          .toList();
    } else if (interval == TimeInterval.threeMonth) {
      filteredDataList = state.allDataList
          .where((item) => today.difference(item.date).inDays <= 90)
          .toList();
    } else if (interval == TimeInterval.sixMonth) {
      filteredDataList = state.allDataList
          .where((item) => today.difference(item.date).inDays <= 180)
          .toList();
    } else if (interval == TimeInterval.year) {
      filteredDataList = state.allDataList
          .where((item) => today.difference(item.date).inDays <= 365)
          .toList();
    } else {
      filteredDataList = state.allDataList;
    }

    emit(
      state.copyWith(
        filteredDataList: filteredDataList,
        interval: interval,
      ),
    );
  }
}
