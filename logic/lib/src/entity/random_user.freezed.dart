// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'random_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RandomUser {
  String get id => throw _privateConstructorUsedError;
  RandomUserName get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  DateTime? get birthday => throw _privateConstructorUsedError;
  Gender get gender => throw _privateConstructorUsedError;
  String get nationality => throw _privateConstructorUsedError;

  /// Create a copy of RandomUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RandomUserCopyWith<RandomUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RandomUserCopyWith<$Res> {
  factory $RandomUserCopyWith(
          RandomUser value, $Res Function(RandomUser) then) =
      _$RandomUserCopyWithImpl<$Res, RandomUser>;
  @useResult
  $Res call(
      {String id,
      RandomUserName name,
      String email,
      DateTime? birthday,
      Gender gender,
      String nationality});

  $RandomUserNameCopyWith<$Res> get name;
}

/// @nodoc
class _$RandomUserCopyWithImpl<$Res, $Val extends RandomUser>
    implements $RandomUserCopyWith<$Res> {
  _$RandomUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RandomUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? birthday = freezed,
    Object? gender = null,
    Object? nationality = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as RandomUserName,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      nationality: null == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of RandomUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RandomUserNameCopyWith<$Res> get name {
    return $RandomUserNameCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RandomUserImplCopyWith<$Res>
    implements $RandomUserCopyWith<$Res> {
  factory _$$RandomUserImplCopyWith(
          _$RandomUserImpl value, $Res Function(_$RandomUserImpl) then) =
      __$$RandomUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      RandomUserName name,
      String email,
      DateTime? birthday,
      Gender gender,
      String nationality});

  @override
  $RandomUserNameCopyWith<$Res> get name;
}

/// @nodoc
class __$$RandomUserImplCopyWithImpl<$Res>
    extends _$RandomUserCopyWithImpl<$Res, _$RandomUserImpl>
    implements _$$RandomUserImplCopyWith<$Res> {
  __$$RandomUserImplCopyWithImpl(
      _$RandomUserImpl _value, $Res Function(_$RandomUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of RandomUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? birthday = freezed,
    Object? gender = null,
    Object? nationality = null,
  }) {
    return _then(_$RandomUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as RandomUserName,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      nationality: null == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RandomUserImpl implements _RandomUser {
  const _$RandomUserImpl(
      {this.id = RandomUser.defaultId,
      this.name = RandomUser.defaultName,
      this.email = RandomUser.defaultEmail,
      this.birthday = RandomUser.defaultBirthday,
      this.gender = RandomUser.defaultGender,
      this.nationality = RandomUser.defaultNationality});

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final RandomUserName name;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final DateTime? birthday;
  @override
  @JsonKey()
  final Gender gender;
  @override
  @JsonKey()
  final String nationality;

  @override
  String toString() {
    return 'RandomUser(id: $id, name: $name, email: $email, birthday: $birthday, gender: $gender, nationality: $nationality)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RandomUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.nationality, nationality) ||
                other.nationality == nationality));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, email, birthday, gender, nationality);

  /// Create a copy of RandomUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RandomUserImplCopyWith<_$RandomUserImpl> get copyWith =>
      __$$RandomUserImplCopyWithImpl<_$RandomUserImpl>(this, _$identity);
}

abstract class _RandomUser implements RandomUser {
  const factory _RandomUser(
      {final String id,
      final RandomUserName name,
      final String email,
      final DateTime? birthday,
      final Gender gender,
      final String nationality}) = _$RandomUserImpl;

  @override
  String get id;
  @override
  RandomUserName get name;
  @override
  String get email;
  @override
  DateTime? get birthday;
  @override
  Gender get gender;
  @override
  String get nationality;

  /// Create a copy of RandomUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RandomUserImplCopyWith<_$RandomUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RandomUserName {
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  /// Create a copy of RandomUserName
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RandomUserNameCopyWith<RandomUserName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RandomUserNameCopyWith<$Res> {
  factory $RandomUserNameCopyWith(
          RandomUserName value, $Res Function(RandomUserName) then) =
      _$RandomUserNameCopyWithImpl<$Res, RandomUserName>;
  @useResult
  $Res call({String firstName, String lastName, String title});
}

/// @nodoc
class _$RandomUserNameCopyWithImpl<$Res, $Val extends RandomUserName>
    implements $RandomUserNameCopyWith<$Res> {
  _$RandomUserNameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RandomUserName
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RandomUserNameImplCopyWith<$Res>
    implements $RandomUserNameCopyWith<$Res> {
  factory _$$RandomUserNameImplCopyWith(_$RandomUserNameImpl value,
          $Res Function(_$RandomUserNameImpl) then) =
      __$$RandomUserNameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String firstName, String lastName, String title});
}

/// @nodoc
class __$$RandomUserNameImplCopyWithImpl<$Res>
    extends _$RandomUserNameCopyWithImpl<$Res, _$RandomUserNameImpl>
    implements _$$RandomUserNameImplCopyWith<$Res> {
  __$$RandomUserNameImplCopyWithImpl(
      _$RandomUserNameImpl _value, $Res Function(_$RandomUserNameImpl) _then)
      : super(_value, _then);

  /// Create a copy of RandomUserName
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? title = null,
  }) {
    return _then(_$RandomUserNameImpl(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RandomUserNameImpl implements _RandomUserName {
  const _$RandomUserNameImpl(
      {this.firstName = RandomUserName.defaultFirstName,
      this.lastName = RandomUserName.defaultLastName,
      this.title = RandomUserName.defaultTitle});

  @override
  @JsonKey()
  final String firstName;
  @override
  @JsonKey()
  final String lastName;
  @override
  @JsonKey()
  final String title;

  @override
  String toString() {
    return 'RandomUserName(firstName: $firstName, lastName: $lastName, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RandomUserNameImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, title);

  /// Create a copy of RandomUserName
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RandomUserNameImplCopyWith<_$RandomUserNameImpl> get copyWith =>
      __$$RandomUserNameImplCopyWithImpl<_$RandomUserNameImpl>(
          this, _$identity);
}

abstract class _RandomUserName implements RandomUserName {
  const factory _RandomUserName(
      {final String firstName,
      final String lastName,
      final String title}) = _$RandomUserNameImpl;

  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get title;

  /// Create a copy of RandomUserName
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RandomUserNameImplCopyWith<_$RandomUserNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
