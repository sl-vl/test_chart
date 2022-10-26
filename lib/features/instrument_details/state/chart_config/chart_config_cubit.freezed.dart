// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chart_config_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChartConfigState {
  List<HistoryDataItem> get allDataList => throw _privateConstructorUsedError;
  List<HistoryDataItem> get filteredDataList =>
      throw _privateConstructorUsedError;
  TimeInterval get interval => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChartConfigStateCopyWith<ChartConfigState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChartConfigStateCopyWith<$Res> {
  factory $ChartConfigStateCopyWith(
          ChartConfigState value, $Res Function(ChartConfigState) then) =
      _$ChartConfigStateCopyWithImpl<$Res, ChartConfigState>;
  @useResult
  $Res call(
      {List<HistoryDataItem> allDataList,
      List<HistoryDataItem> filteredDataList,
      TimeInterval interval});
}

/// @nodoc
class _$ChartConfigStateCopyWithImpl<$Res, $Val extends ChartConfigState>
    implements $ChartConfigStateCopyWith<$Res> {
  _$ChartConfigStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allDataList = null,
    Object? filteredDataList = null,
    Object? interval = null,
  }) {
    return _then(_value.copyWith(
      allDataList: null == allDataList
          ? _value.allDataList
          : allDataList // ignore: cast_nullable_to_non_nullable
              as List<HistoryDataItem>,
      filteredDataList: null == filteredDataList
          ? _value.filteredDataList
          : filteredDataList // ignore: cast_nullable_to_non_nullable
              as List<HistoryDataItem>,
      interval: null == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as TimeInterval,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChartConfigStateCopyWith<$Res>
    implements $ChartConfigStateCopyWith<$Res> {
  factory _$$_ChartConfigStateCopyWith(
          _$_ChartConfigState value, $Res Function(_$_ChartConfigState) then) =
      __$$_ChartConfigStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<HistoryDataItem> allDataList,
      List<HistoryDataItem> filteredDataList,
      TimeInterval interval});
}

/// @nodoc
class __$$_ChartConfigStateCopyWithImpl<$Res>
    extends _$ChartConfigStateCopyWithImpl<$Res, _$_ChartConfigState>
    implements _$$_ChartConfigStateCopyWith<$Res> {
  __$$_ChartConfigStateCopyWithImpl(
      _$_ChartConfigState _value, $Res Function(_$_ChartConfigState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allDataList = null,
    Object? filteredDataList = null,
    Object? interval = null,
  }) {
    return _then(_$_ChartConfigState(
      allDataList: null == allDataList
          ? _value._allDataList
          : allDataList // ignore: cast_nullable_to_non_nullable
              as List<HistoryDataItem>,
      filteredDataList: null == filteredDataList
          ? _value._filteredDataList
          : filteredDataList // ignore: cast_nullable_to_non_nullable
              as List<HistoryDataItem>,
      interval: null == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as TimeInterval,
    ));
  }
}

/// @nodoc

class _$_ChartConfigState implements _ChartConfigState {
  const _$_ChartConfigState(
      {required final List<HistoryDataItem> allDataList,
      required final List<HistoryDataItem> filteredDataList,
      required this.interval})
      : _allDataList = allDataList,
        _filteredDataList = filteredDataList;

  final List<HistoryDataItem> _allDataList;
  @override
  List<HistoryDataItem> get allDataList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allDataList);
  }

  final List<HistoryDataItem> _filteredDataList;
  @override
  List<HistoryDataItem> get filteredDataList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredDataList);
  }

  @override
  final TimeInterval interval;

  @override
  String toString() {
    return 'ChartConfigState(allDataList: $allDataList, filteredDataList: $filteredDataList, interval: $interval)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChartConfigState &&
            const DeepCollectionEquality()
                .equals(other._allDataList, _allDataList) &&
            const DeepCollectionEquality()
                .equals(other._filteredDataList, _filteredDataList) &&
            (identical(other.interval, interval) ||
                other.interval == interval));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_allDataList),
      const DeepCollectionEquality().hash(_filteredDataList),
      interval);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChartConfigStateCopyWith<_$_ChartConfigState> get copyWith =>
      __$$_ChartConfigStateCopyWithImpl<_$_ChartConfigState>(this, _$identity);
}

abstract class _ChartConfigState implements ChartConfigState {
  const factory _ChartConfigState(
      {required final List<HistoryDataItem> allDataList,
      required final List<HistoryDataItem> filteredDataList,
      required final TimeInterval interval}) = _$_ChartConfigState;

  @override
  List<HistoryDataItem> get allDataList;
  @override
  List<HistoryDataItem> get filteredDataList;
  @override
  TimeInterval get interval;
  @override
  @JsonKey(ignore: true)
  _$$_ChartConfigStateCopyWith<_$_ChartConfigState> get copyWith =>
      throw _privateConstructorUsedError;
}
