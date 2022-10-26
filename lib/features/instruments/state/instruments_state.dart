part of 'instruments_cubit.dart';

@freezed
class InstrumentsState with _$InstrumentsState {
  const factory InstrumentsState({
    required Status<List<Instrument>> instruments,
    required Search<List<Instrument>> searchResults,
  }) = _InstrumentsState;

  factory InstrumentsState.initial() => const InstrumentsState(
        instruments: Status.initial(),
        searchResults: Search.disabled(),
      );
}

@freezed
class Status<T> with _$Status<T> {
  const factory Status.initial() = StatusInitial;
  const factory Status.loading() = StatusLoading;
  const factory Status.success(T data) = StatusSuccess;
  const factory Status.error() = StatusError;
}

@freezed
class Search<T> with _$Search<T> {
  const factory Search.disabled() = SearchDisabled;
  const factory Search.enabled(T data) = SearchEnabled;
}
