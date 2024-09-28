// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CommonViewModelData {
  AppExceptionWrapper? get appExceptionWrapper =>
      throw _privateConstructorUsedError;
  int get loadingCount => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isConnected => throw _privateConstructorUsedError;

  /// Create a copy of CommonViewModelData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommonViewModelDataCopyWith<CommonViewModelData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonViewModelDataCopyWith<$Res> {
  factory $CommonViewModelDataCopyWith(
          CommonViewModelData value, $Res Function(CommonViewModelData) then) =
      _$CommonViewModelDataCopyWithImpl<$Res, CommonViewModelData>;
  @useResult
  $Res call(
      {AppExceptionWrapper? appExceptionWrapper,
      int loadingCount,
      bool isLoading,
      bool isConnected});
}

/// @nodoc
class _$CommonViewModelDataCopyWithImpl<$Res, $Val extends CommonViewModelData>
    implements $CommonViewModelDataCopyWith<$Res> {
  _$CommonViewModelDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommonViewModelData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appExceptionWrapper = freezed,
    Object? loadingCount = null,
    Object? isLoading = null,
    Object? isConnected = null,
  }) {
    return _then(_value.copyWith(
      appExceptionWrapper: freezed == appExceptionWrapper
          ? _value.appExceptionWrapper
          : appExceptionWrapper // ignore: cast_nullable_to_non_nullable
              as AppExceptionWrapper?,
      loadingCount: null == loadingCount
          ? _value.loadingCount
          : loadingCount // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isConnected: null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommonViewModelDataImplCopyWith<$Res>
    implements $CommonViewModelDataCopyWith<$Res> {
  factory _$$CommonViewModelDataImplCopyWith(_$CommonViewModelDataImpl value,
          $Res Function(_$CommonViewModelDataImpl) then) =
      __$$CommonViewModelDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppExceptionWrapper? appExceptionWrapper,
      int loadingCount,
      bool isLoading,
      bool isConnected});
}

/// @nodoc
class __$$CommonViewModelDataImplCopyWithImpl<$Res>
    extends _$CommonViewModelDataCopyWithImpl<$Res, _$CommonViewModelDataImpl>
    implements _$$CommonViewModelDataImplCopyWith<$Res> {
  __$$CommonViewModelDataImplCopyWithImpl(_$CommonViewModelDataImpl _value,
      $Res Function(_$CommonViewModelDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommonViewModelData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appExceptionWrapper = freezed,
    Object? loadingCount = null,
    Object? isLoading = null,
    Object? isConnected = null,
  }) {
    return _then(_$CommonViewModelDataImpl(
      appExceptionWrapper: freezed == appExceptionWrapper
          ? _value.appExceptionWrapper
          : appExceptionWrapper // ignore: cast_nullable_to_non_nullable
              as AppExceptionWrapper?,
      loadingCount: null == loadingCount
          ? _value.loadingCount
          : loadingCount // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isConnected: null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CommonViewModelDataImpl implements _CommonViewModelData {
  const _$CommonViewModelDataImpl(
      {this.appExceptionWrapper,
      this.loadingCount = 0,
      this.isLoading = false,
      this.isConnected = true});

  @override
  final AppExceptionWrapper? appExceptionWrapper;
  @override
  @JsonKey()
  final int loadingCount;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isConnected;

  @override
  String toString() {
    return 'CommonViewModelData(appExceptionWrapper: $appExceptionWrapper, loadingCount: $loadingCount, isLoading: $isLoading, isConnected: $isConnected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommonViewModelDataImpl &&
            (identical(other.appExceptionWrapper, appExceptionWrapper) ||
                other.appExceptionWrapper == appExceptionWrapper) &&
            (identical(other.loadingCount, loadingCount) ||
                other.loadingCount == loadingCount) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isConnected, isConnected) ||
                other.isConnected == isConnected));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, appExceptionWrapper, loadingCount, isLoading, isConnected);

  /// Create a copy of CommonViewModelData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommonViewModelDataImplCopyWith<_$CommonViewModelDataImpl> get copyWith =>
      __$$CommonViewModelDataImplCopyWithImpl<_$CommonViewModelDataImpl>(
          this, _$identity);
}

abstract class _CommonViewModelData implements CommonViewModelData {
  const factory _CommonViewModelData(
      {final AppExceptionWrapper? appExceptionWrapper,
      final int loadingCount,
      final bool isLoading,
      final bool isConnected}) = _$CommonViewModelDataImpl;

  @override
  AppExceptionWrapper? get appExceptionWrapper;
  @override
  int get loadingCount;
  @override
  bool get isLoading;
  @override
  bool get isConnected;

  /// Create a copy of CommonViewModelData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommonViewModelDataImplCopyWith<_$CommonViewModelDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
