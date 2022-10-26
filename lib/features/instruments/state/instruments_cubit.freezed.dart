// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'instruments_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InstrumentsState {
  Status<List<Instrument>> get instruments =>
      throw _privateConstructorUsedError;
  Search<List<Instrument>> get searchResults =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InstrumentsStateCopyWith<InstrumentsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstrumentsStateCopyWith<$Res> {
  factory $InstrumentsStateCopyWith(
          InstrumentsState value, $Res Function(InstrumentsState) then) =
      _$InstrumentsStateCopyWithImpl<$Res, InstrumentsState>;
  @useResult
  $Res call(
      {Status<List<Instrument>> instruments,
      Search<List<Instrument>> searchResults});

  $StatusCopyWith<List<Instrument>, $Res> get instruments;
  $SearchCopyWith<List<Instrument>, $Res> get searchResults;
}

/// @nodoc
class _$InstrumentsStateCopyWithImpl<$Res, $Val extends InstrumentsState>
    implements $InstrumentsStateCopyWith<$Res> {
  _$InstrumentsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? instruments = null,
    Object? searchResults = null,
  }) {
    return _then(_value.copyWith(
      instruments: null == instruments
          ? _value.instruments
          : instruments // ignore: cast_nullable_to_non_nullable
              as Status<List<Instrument>>,
      searchResults: null == searchResults
          ? _value.searchResults
          : searchResults // ignore: cast_nullable_to_non_nullable
              as Search<List<Instrument>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<List<Instrument>, $Res> get instruments {
    return $StatusCopyWith<List<Instrument>, $Res>(_value.instruments, (value) {
      return _then(_value.copyWith(instruments: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchCopyWith<List<Instrument>, $Res> get searchResults {
    return $SearchCopyWith<List<Instrument>, $Res>(_value.searchResults,
        (value) {
      return _then(_value.copyWith(searchResults: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InstrumentsStateCopyWith<$Res>
    implements $InstrumentsStateCopyWith<$Res> {
  factory _$$_InstrumentsStateCopyWith(
          _$_InstrumentsState value, $Res Function(_$_InstrumentsState) then) =
      __$$_InstrumentsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status<List<Instrument>> instruments,
      Search<List<Instrument>> searchResults});

  @override
  $StatusCopyWith<List<Instrument>, $Res> get instruments;
  @override
  $SearchCopyWith<List<Instrument>, $Res> get searchResults;
}

/// @nodoc
class __$$_InstrumentsStateCopyWithImpl<$Res>
    extends _$InstrumentsStateCopyWithImpl<$Res, _$_InstrumentsState>
    implements _$$_InstrumentsStateCopyWith<$Res> {
  __$$_InstrumentsStateCopyWithImpl(
      _$_InstrumentsState _value, $Res Function(_$_InstrumentsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? instruments = null,
    Object? searchResults = null,
  }) {
    return _then(_$_InstrumentsState(
      instruments: null == instruments
          ? _value.instruments
          : instruments // ignore: cast_nullable_to_non_nullable
              as Status<List<Instrument>>,
      searchResults: null == searchResults
          ? _value.searchResults
          : searchResults // ignore: cast_nullable_to_non_nullable
              as Search<List<Instrument>>,
    ));
  }
}

/// @nodoc

class _$_InstrumentsState implements _InstrumentsState {
  const _$_InstrumentsState(
      {required this.instruments, required this.searchResults});

  @override
  final Status<List<Instrument>> instruments;
  @override
  final Search<List<Instrument>> searchResults;

  @override
  String toString() {
    return 'InstrumentsState(instruments: $instruments, searchResults: $searchResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InstrumentsState &&
            (identical(other.instruments, instruments) ||
                other.instruments == instruments) &&
            (identical(other.searchResults, searchResults) ||
                other.searchResults == searchResults));
  }

  @override
  int get hashCode => Object.hash(runtimeType, instruments, searchResults);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InstrumentsStateCopyWith<_$_InstrumentsState> get copyWith =>
      __$$_InstrumentsStateCopyWithImpl<_$_InstrumentsState>(this, _$identity);
}

abstract class _InstrumentsState implements InstrumentsState {
  const factory _InstrumentsState(
          {required final Status<List<Instrument>> instruments,
          required final Search<List<Instrument>> searchResults}) =
      _$_InstrumentsState;

  @override
  Status<List<Instrument>> get instruments;
  @override
  Search<List<Instrument>> get searchResults;
  @override
  @JsonKey(ignore: true)
  _$$_InstrumentsStateCopyWith<_$_InstrumentsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Status<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatusInitial<T> value) initial,
    required TResult Function(StatusLoading<T> value) loading,
    required TResult Function(StatusSuccess<T> value) success,
    required TResult Function(StatusError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatusInitial<T> value)? initial,
    TResult? Function(StatusLoading<T> value)? loading,
    TResult? Function(StatusSuccess<T> value)? success,
    TResult? Function(StatusError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusInitial<T> value)? initial,
    TResult Function(StatusLoading<T> value)? loading,
    TResult Function(StatusSuccess<T> value)? success,
    TResult Function(StatusError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusCopyWith<T, $Res> {
  factory $StatusCopyWith(Status<T> value, $Res Function(Status<T>) then) =
      _$StatusCopyWithImpl<T, $Res, Status<T>>;
}

/// @nodoc
class _$StatusCopyWithImpl<T, $Res, $Val extends Status<T>>
    implements $StatusCopyWith<T, $Res> {
  _$StatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StatusInitialCopyWith<T, $Res> {
  factory _$$StatusInitialCopyWith(
          _$StatusInitial<T> value, $Res Function(_$StatusInitial<T>) then) =
      __$$StatusInitialCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$StatusInitialCopyWithImpl<T, $Res>
    extends _$StatusCopyWithImpl<T, $Res, _$StatusInitial<T>>
    implements _$$StatusInitialCopyWith<T, $Res> {
  __$$StatusInitialCopyWithImpl(
      _$StatusInitial<T> _value, $Res Function(_$StatusInitial<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StatusInitial<T> implements StatusInitial<T> {
  const _$StatusInitial();

  @override
  String toString() {
    return 'Status<$T>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StatusInitial<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatusInitial<T> value) initial,
    required TResult Function(StatusLoading<T> value) loading,
    required TResult Function(StatusSuccess<T> value) success,
    required TResult Function(StatusError<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatusInitial<T> value)? initial,
    TResult? Function(StatusLoading<T> value)? loading,
    TResult? Function(StatusSuccess<T> value)? success,
    TResult? Function(StatusError<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusInitial<T> value)? initial,
    TResult Function(StatusLoading<T> value)? loading,
    TResult Function(StatusSuccess<T> value)? success,
    TResult Function(StatusError<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class StatusInitial<T> implements Status<T> {
  const factory StatusInitial() = _$StatusInitial<T>;
}

/// @nodoc
abstract class _$$StatusLoadingCopyWith<T, $Res> {
  factory _$$StatusLoadingCopyWith(
          _$StatusLoading<T> value, $Res Function(_$StatusLoading<T>) then) =
      __$$StatusLoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$StatusLoadingCopyWithImpl<T, $Res>
    extends _$StatusCopyWithImpl<T, $Res, _$StatusLoading<T>>
    implements _$$StatusLoadingCopyWith<T, $Res> {
  __$$StatusLoadingCopyWithImpl(
      _$StatusLoading<T> _value, $Res Function(_$StatusLoading<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StatusLoading<T> implements StatusLoading<T> {
  const _$StatusLoading();

  @override
  String toString() {
    return 'Status<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StatusLoading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatusInitial<T> value) initial,
    required TResult Function(StatusLoading<T> value) loading,
    required TResult Function(StatusSuccess<T> value) success,
    required TResult Function(StatusError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatusInitial<T> value)? initial,
    TResult? Function(StatusLoading<T> value)? loading,
    TResult? Function(StatusSuccess<T> value)? success,
    TResult? Function(StatusError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusInitial<T> value)? initial,
    TResult Function(StatusLoading<T> value)? loading,
    TResult Function(StatusSuccess<T> value)? success,
    TResult Function(StatusError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class StatusLoading<T> implements Status<T> {
  const factory StatusLoading() = _$StatusLoading<T>;
}

/// @nodoc
abstract class _$$StatusSuccessCopyWith<T, $Res> {
  factory _$$StatusSuccessCopyWith(
          _$StatusSuccess<T> value, $Res Function(_$StatusSuccess<T>) then) =
      __$$StatusSuccessCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$StatusSuccessCopyWithImpl<T, $Res>
    extends _$StatusCopyWithImpl<T, $Res, _$StatusSuccess<T>>
    implements _$$StatusSuccessCopyWith<T, $Res> {
  __$$StatusSuccessCopyWithImpl(
      _$StatusSuccess<T> _value, $Res Function(_$StatusSuccess<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$StatusSuccess<T>(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$StatusSuccess<T> implements StatusSuccess<T> {
  const _$StatusSuccess(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'Status<$T>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusSuccess<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusSuccessCopyWith<T, _$StatusSuccess<T>> get copyWith =>
      __$$StatusSuccessCopyWithImpl<T, _$StatusSuccess<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function() error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function()? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatusInitial<T> value) initial,
    required TResult Function(StatusLoading<T> value) loading,
    required TResult Function(StatusSuccess<T> value) success,
    required TResult Function(StatusError<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatusInitial<T> value)? initial,
    TResult? Function(StatusLoading<T> value)? loading,
    TResult? Function(StatusSuccess<T> value)? success,
    TResult? Function(StatusError<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusInitial<T> value)? initial,
    TResult Function(StatusLoading<T> value)? loading,
    TResult Function(StatusSuccess<T> value)? success,
    TResult Function(StatusError<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class StatusSuccess<T> implements Status<T> {
  const factory StatusSuccess(final T data) = _$StatusSuccess<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$StatusSuccessCopyWith<T, _$StatusSuccess<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusErrorCopyWith<T, $Res> {
  factory _$$StatusErrorCopyWith(
          _$StatusError<T> value, $Res Function(_$StatusError<T>) then) =
      __$$StatusErrorCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$StatusErrorCopyWithImpl<T, $Res>
    extends _$StatusCopyWithImpl<T, $Res, _$StatusError<T>>
    implements _$$StatusErrorCopyWith<T, $Res> {
  __$$StatusErrorCopyWithImpl(
      _$StatusError<T> _value, $Res Function(_$StatusError<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StatusError<T> implements StatusError<T> {
  const _$StatusError();

  @override
  String toString() {
    return 'Status<$T>.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StatusError<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatusInitial<T> value) initial,
    required TResult Function(StatusLoading<T> value) loading,
    required TResult Function(StatusSuccess<T> value) success,
    required TResult Function(StatusError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatusInitial<T> value)? initial,
    TResult? Function(StatusLoading<T> value)? loading,
    TResult? Function(StatusSuccess<T> value)? success,
    TResult? Function(StatusError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusInitial<T> value)? initial,
    TResult Function(StatusLoading<T> value)? loading,
    TResult Function(StatusSuccess<T> value)? success,
    TResult Function(StatusError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class StatusError<T> implements Status<T> {
  const factory StatusError() = _$StatusError<T>;
}

/// @nodoc
mixin _$Search<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disabled,
    required TResult Function(T data) enabled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? disabled,
    TResult? Function(T data)? enabled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disabled,
    TResult Function(T data)? enabled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchDisabled<T> value) disabled,
    required TResult Function(SearchEnabled<T> value) enabled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchDisabled<T> value)? disabled,
    TResult? Function(SearchEnabled<T> value)? enabled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchDisabled<T> value)? disabled,
    TResult Function(SearchEnabled<T> value)? enabled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchCopyWith<T, $Res> {
  factory $SearchCopyWith(Search<T> value, $Res Function(Search<T>) then) =
      _$SearchCopyWithImpl<T, $Res, Search<T>>;
}

/// @nodoc
class _$SearchCopyWithImpl<T, $Res, $Val extends Search<T>>
    implements $SearchCopyWith<T, $Res> {
  _$SearchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SearchDisabledCopyWith<T, $Res> {
  factory _$$SearchDisabledCopyWith(
          _$SearchDisabled<T> value, $Res Function(_$SearchDisabled<T>) then) =
      __$$SearchDisabledCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$SearchDisabledCopyWithImpl<T, $Res>
    extends _$SearchCopyWithImpl<T, $Res, _$SearchDisabled<T>>
    implements _$$SearchDisabledCopyWith<T, $Res> {
  __$$SearchDisabledCopyWithImpl(
      _$SearchDisabled<T> _value, $Res Function(_$SearchDisabled<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchDisabled<T> implements SearchDisabled<T> {
  const _$SearchDisabled();

  @override
  String toString() {
    return 'Search<$T>.disabled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchDisabled<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disabled,
    required TResult Function(T data) enabled,
  }) {
    return disabled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? disabled,
    TResult? Function(T data)? enabled,
  }) {
    return disabled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disabled,
    TResult Function(T data)? enabled,
    required TResult orElse(),
  }) {
    if (disabled != null) {
      return disabled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchDisabled<T> value) disabled,
    required TResult Function(SearchEnabled<T> value) enabled,
  }) {
    return disabled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchDisabled<T> value)? disabled,
    TResult? Function(SearchEnabled<T> value)? enabled,
  }) {
    return disabled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchDisabled<T> value)? disabled,
    TResult Function(SearchEnabled<T> value)? enabled,
    required TResult orElse(),
  }) {
    if (disabled != null) {
      return disabled(this);
    }
    return orElse();
  }
}

abstract class SearchDisabled<T> implements Search<T> {
  const factory SearchDisabled() = _$SearchDisabled<T>;
}

/// @nodoc
abstract class _$$SearchEnabledCopyWith<T, $Res> {
  factory _$$SearchEnabledCopyWith(
          _$SearchEnabled<T> value, $Res Function(_$SearchEnabled<T>) then) =
      __$$SearchEnabledCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$SearchEnabledCopyWithImpl<T, $Res>
    extends _$SearchCopyWithImpl<T, $Res, _$SearchEnabled<T>>
    implements _$$SearchEnabledCopyWith<T, $Res> {
  __$$SearchEnabledCopyWithImpl(
      _$SearchEnabled<T> _value, $Res Function(_$SearchEnabled<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SearchEnabled<T>(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SearchEnabled<T> implements SearchEnabled<T> {
  const _$SearchEnabled(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'Search<$T>.enabled(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchEnabled<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchEnabledCopyWith<T, _$SearchEnabled<T>> get copyWith =>
      __$$SearchEnabledCopyWithImpl<T, _$SearchEnabled<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disabled,
    required TResult Function(T data) enabled,
  }) {
    return enabled(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? disabled,
    TResult? Function(T data)? enabled,
  }) {
    return enabled?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disabled,
    TResult Function(T data)? enabled,
    required TResult orElse(),
  }) {
    if (enabled != null) {
      return enabled(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchDisabled<T> value) disabled,
    required TResult Function(SearchEnabled<T> value) enabled,
  }) {
    return enabled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchDisabled<T> value)? disabled,
    TResult? Function(SearchEnabled<T> value)? enabled,
  }) {
    return enabled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchDisabled<T> value)? disabled,
    TResult Function(SearchEnabled<T> value)? enabled,
    required TResult orElse(),
  }) {
    if (enabled != null) {
      return enabled(this);
    }
    return orElse();
  }
}

abstract class SearchEnabled<T> implements Search<T> {
  const factory SearchEnabled(final T data) = _$SearchEnabled<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$SearchEnabledCopyWith<T, _$SearchEnabled<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
