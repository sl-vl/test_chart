part of 'instrument_detail_cubit.dart';

@freezed
class InstrumentDetailState with _$InstrumentDetailState {
  const factory InstrumentDetailState({
    required Status<InstrumentData> instrument,
  }) = _InstrumentDetailState;

  factory InstrumentDetailState.initial() =>
      const InstrumentDetailState(instrument: Status.initial());
}

@freezed
class Status<T> with _$Status<T> {
  const factory Status.initial() = StatusInitial;
  const factory Status.loading() = StatusLoading;
  const factory Status.success(T data) = StatusSuccess;
  const factory Status.error() = StatusError;
}
