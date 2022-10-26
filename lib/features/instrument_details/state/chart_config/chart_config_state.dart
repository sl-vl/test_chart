part of 'chart_config_cubit.dart';

@freezed
class ChartConfigState with _$ChartConfigState {
  const factory ChartConfigState({
    required List<HistoryDataItem> allDataList,
    required List<HistoryDataItem> filteredDataList,
    required TimeInterval interval,
  }) = _ChartConfigState;

  factory ChartConfigState.initial() => const ChartConfigState(
        allDataList: [],
        filteredDataList: [],
        interval: TimeInterval.all,
      );
}
