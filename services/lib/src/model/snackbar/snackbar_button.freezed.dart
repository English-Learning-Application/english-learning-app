// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'snackbar_button.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SnackBarButton {
  String get label => throw _privateConstructorUsedError;
  Func0<void> get onPressed => throw _privateConstructorUsedError;

  /// Create a copy of SnackBarButton
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SnackBarButtonCopyWith<SnackBarButton> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnackBarButtonCopyWith<$Res> {
  factory $SnackBarButtonCopyWith(
          SnackBarButton value, $Res Function(SnackBarButton) then) =
      _$SnackBarButtonCopyWithImpl<$Res, SnackBarButton>;
  @useResult
  $Res call({String label, Func0<void> onPressed});
}

/// @nodoc
class _$SnackBarButtonCopyWithImpl<$Res, $Val extends SnackBarButton>
    implements $SnackBarButtonCopyWith<$Res> {
  _$SnackBarButtonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SnackBarButton
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? onPressed = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      onPressed: null == onPressed
          ? _value.onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as Func0<void>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SnackBarButtonImplCopyWith<$Res>
    implements $SnackBarButtonCopyWith<$Res> {
  factory _$$SnackBarButtonImplCopyWith(_$SnackBarButtonImpl value,
          $Res Function(_$SnackBarButtonImpl) then) =
      __$$SnackBarButtonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, Func0<void> onPressed});
}

/// @nodoc
class __$$SnackBarButtonImplCopyWithImpl<$Res>
    extends _$SnackBarButtonCopyWithImpl<$Res, _$SnackBarButtonImpl>
    implements _$$SnackBarButtonImplCopyWith<$Res> {
  __$$SnackBarButtonImplCopyWithImpl(
      _$SnackBarButtonImpl _value, $Res Function(_$SnackBarButtonImpl) _then)
      : super(_value, _then);

  /// Create a copy of SnackBarButton
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? onPressed = null,
  }) {
    return _then(_$SnackBarButtonImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      onPressed: null == onPressed
          ? _value.onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as Func0<void>,
    ));
  }
}

/// @nodoc

class _$SnackBarButtonImpl extends _SnackBarButton {
  const _$SnackBarButtonImpl({required this.label, required this.onPressed})
      : super._();

  @override
  final String label;
  @override
  final Func0<void> onPressed;

  @override
  String toString() {
    return 'SnackBarButton(label: $label, onPressed: $onPressed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnackBarButtonImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.onPressed, onPressed) ||
                other.onPressed == onPressed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, label, onPressed);

  /// Create a copy of SnackBarButton
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SnackBarButtonImplCopyWith<_$SnackBarButtonImpl> get copyWith =>
      __$$SnackBarButtonImplCopyWithImpl<_$SnackBarButtonImpl>(
          this, _$identity);
}

abstract class _SnackBarButton extends SnackBarButton {
  const factory _SnackBarButton(
      {required final String label,
      required final Func0<void> onPressed}) = _$SnackBarButtonImpl;
  const _SnackBarButton._() : super._();

  @override
  String get label;
  @override
  Func0<void> get onPressed;

  /// Create a copy of SnackBarButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SnackBarButtonImplCopyWith<_$SnackBarButtonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
