// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeViewModelData {
  List<ChatSession> get chatSessions => throw _privateConstructorUsedError;

  /// Create a copy of HomeViewModelData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeViewModelDataCopyWith<HomeViewModelData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeViewModelDataCopyWith<$Res> {
  factory $HomeViewModelDataCopyWith(
          HomeViewModelData value, $Res Function(HomeViewModelData) then) =
      _$HomeViewModelDataCopyWithImpl<$Res, HomeViewModelData>;
  @useResult
  $Res call({List<ChatSession> chatSessions});
}

/// @nodoc
class _$HomeViewModelDataCopyWithImpl<$Res, $Val extends HomeViewModelData>
    implements $HomeViewModelDataCopyWith<$Res> {
  _$HomeViewModelDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeViewModelData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatSessions = null,
  }) {
    return _then(_value.copyWith(
      chatSessions: null == chatSessions
          ? _value.chatSessions
          : chatSessions // ignore: cast_nullable_to_non_nullable
              as List<ChatSession>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeViewModelDataImplCopyWith<$Res>
    implements $HomeViewModelDataCopyWith<$Res> {
  factory _$$HomeViewModelDataImplCopyWith(_$HomeViewModelDataImpl value,
          $Res Function(_$HomeViewModelDataImpl) then) =
      __$$HomeViewModelDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ChatSession> chatSessions});
}

/// @nodoc
class __$$HomeViewModelDataImplCopyWithImpl<$Res>
    extends _$HomeViewModelDataCopyWithImpl<$Res, _$HomeViewModelDataImpl>
    implements _$$HomeViewModelDataImplCopyWith<$Res> {
  __$$HomeViewModelDataImplCopyWithImpl(_$HomeViewModelDataImpl _value,
      $Res Function(_$HomeViewModelDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeViewModelData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatSessions = null,
  }) {
    return _then(_$HomeViewModelDataImpl(
      chatSessions: null == chatSessions
          ? _value._chatSessions
          : chatSessions // ignore: cast_nullable_to_non_nullable
              as List<ChatSession>,
    ));
  }
}

/// @nodoc

class _$HomeViewModelDataImpl implements _HomeViewModelData {
  const _$HomeViewModelDataImpl(
      {final List<ChatSession> chatSessions = const []})
      : _chatSessions = chatSessions;

  final List<ChatSession> _chatSessions;
  @override
  @JsonKey()
  List<ChatSession> get chatSessions {
    if (_chatSessions is EqualUnmodifiableListView) return _chatSessions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chatSessions);
  }

  @override
  String toString() {
    return 'HomeViewModelData(chatSessions: $chatSessions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeViewModelDataImpl &&
            const DeepCollectionEquality()
                .equals(other._chatSessions, _chatSessions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_chatSessions));

  /// Create a copy of HomeViewModelData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeViewModelDataImplCopyWith<_$HomeViewModelDataImpl> get copyWith =>
      __$$HomeViewModelDataImplCopyWithImpl<_$HomeViewModelDataImpl>(
          this, _$identity);
}

abstract class _HomeViewModelData implements HomeViewModelData {
  const factory _HomeViewModelData({final List<ChatSession> chatSessions}) =
      _$HomeViewModelDataImpl;

  @override
  List<ChatSession> get chatSessions;

  /// Create a copy of HomeViewModelData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeViewModelDataImplCopyWith<_$HomeViewModelDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
