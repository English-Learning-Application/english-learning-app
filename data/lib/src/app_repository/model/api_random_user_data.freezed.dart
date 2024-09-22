// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_random_user_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApiRandomUserData _$ApiRandomUserDataFromJson(Map<String, dynamic> json) {
  return _ApiRandomUserData.fromJson(json);
}

/// @nodoc
mixin _$ApiRandomUserData {
  @JsonKey(name: "gender")
  String? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  ApiRandomUserNameData? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "location")
  ApiRandomUserLocationData? get location => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "login")
  ApiRandomUserLoginData? get login => throw _privateConstructorUsedError;
  @JsonKey(name: "dob")
  ApiRandomUserDobData? get dob => throw _privateConstructorUsedError;
  @JsonKey(name: "registered")
  ApiRandomUserDobData? get registered => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "cell")
  String? get cell => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  ApiRandomUserIdData? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "picture")
  ApiRandomUserPictureData? get picture => throw _privateConstructorUsedError;
  @JsonKey(name: "nat")
  String? get nat => throw _privateConstructorUsedError;

  /// Serializes this ApiRandomUserData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiRandomUserData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiRandomUserDataCopyWith<ApiRandomUserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiRandomUserDataCopyWith<$Res> {
  factory $ApiRandomUserDataCopyWith(
          ApiRandomUserData value, $Res Function(ApiRandomUserData) then) =
      _$ApiRandomUserDataCopyWithImpl<$Res, ApiRandomUserData>;
  @useResult
  $Res call(
      {@JsonKey(name: "gender") String? gender,
      @JsonKey(name: "name") ApiRandomUserNameData? name,
      @JsonKey(name: "location") ApiRandomUserLocationData? location,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "login") ApiRandomUserLoginData? login,
      @JsonKey(name: "dob") ApiRandomUserDobData? dob,
      @JsonKey(name: "registered") ApiRandomUserDobData? registered,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "cell") String? cell,
      @JsonKey(name: "id") ApiRandomUserIdData? id,
      @JsonKey(name: "picture") ApiRandomUserPictureData? picture,
      @JsonKey(name: "nat") String? nat});

  $ApiRandomUserNameDataCopyWith<$Res>? get name;
  $ApiRandomUserLocationDataCopyWith<$Res>? get location;
  $ApiRandomUserLoginDataCopyWith<$Res>? get login;
  $ApiRandomUserDobDataCopyWith<$Res>? get dob;
  $ApiRandomUserDobDataCopyWith<$Res>? get registered;
  $ApiRandomUserIdDataCopyWith<$Res>? get id;
  $ApiRandomUserPictureDataCopyWith<$Res>? get picture;
}

/// @nodoc
class _$ApiRandomUserDataCopyWithImpl<$Res, $Val extends ApiRandomUserData>
    implements $ApiRandomUserDataCopyWith<$Res> {
  _$ApiRandomUserDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiRandomUserData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = freezed,
    Object? name = freezed,
    Object? location = freezed,
    Object? email = freezed,
    Object? login = freezed,
    Object? dob = freezed,
    Object? registered = freezed,
    Object? phone = freezed,
    Object? cell = freezed,
    Object? id = freezed,
    Object? picture = freezed,
    Object? nat = freezed,
  }) {
    return _then(_value.copyWith(
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as ApiRandomUserNameData?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as ApiRandomUserLocationData?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as ApiRandomUserLoginData?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as ApiRandomUserDobData?,
      registered: freezed == registered
          ? _value.registered
          : registered // ignore: cast_nullable_to_non_nullable
              as ApiRandomUserDobData?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      cell: freezed == cell
          ? _value.cell
          : cell // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ApiRandomUserIdData?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as ApiRandomUserPictureData?,
      nat: freezed == nat
          ? _value.nat
          : nat // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of ApiRandomUserData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiRandomUserNameDataCopyWith<$Res>? get name {
    if (_value.name == null) {
      return null;
    }

    return $ApiRandomUserNameDataCopyWith<$Res>(_value.name!, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }

  /// Create a copy of ApiRandomUserData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiRandomUserLocationDataCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $ApiRandomUserLocationDataCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  /// Create a copy of ApiRandomUserData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiRandomUserLoginDataCopyWith<$Res>? get login {
    if (_value.login == null) {
      return null;
    }

    return $ApiRandomUserLoginDataCopyWith<$Res>(_value.login!, (value) {
      return _then(_value.copyWith(login: value) as $Val);
    });
  }

  /// Create a copy of ApiRandomUserData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiRandomUserDobDataCopyWith<$Res>? get dob {
    if (_value.dob == null) {
      return null;
    }

    return $ApiRandomUserDobDataCopyWith<$Res>(_value.dob!, (value) {
      return _then(_value.copyWith(dob: value) as $Val);
    });
  }

  /// Create a copy of ApiRandomUserData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiRandomUserDobDataCopyWith<$Res>? get registered {
    if (_value.registered == null) {
      return null;
    }

    return $ApiRandomUserDobDataCopyWith<$Res>(_value.registered!, (value) {
      return _then(_value.copyWith(registered: value) as $Val);
    });
  }

  /// Create a copy of ApiRandomUserData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiRandomUserIdDataCopyWith<$Res>? get id {
    if (_value.id == null) {
      return null;
    }

    return $ApiRandomUserIdDataCopyWith<$Res>(_value.id!, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }

  /// Create a copy of ApiRandomUserData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiRandomUserPictureDataCopyWith<$Res>? get picture {
    if (_value.picture == null) {
      return null;
    }

    return $ApiRandomUserPictureDataCopyWith<$Res>(_value.picture!, (value) {
      return _then(_value.copyWith(picture: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApiRandomUserDataImplCopyWith<$Res>
    implements $ApiRandomUserDataCopyWith<$Res> {
  factory _$$ApiRandomUserDataImplCopyWith(_$ApiRandomUserDataImpl value,
          $Res Function(_$ApiRandomUserDataImpl) then) =
      __$$ApiRandomUserDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "gender") String? gender,
      @JsonKey(name: "name") ApiRandomUserNameData? name,
      @JsonKey(name: "location") ApiRandomUserLocationData? location,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "login") ApiRandomUserLoginData? login,
      @JsonKey(name: "dob") ApiRandomUserDobData? dob,
      @JsonKey(name: "registered") ApiRandomUserDobData? registered,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "cell") String? cell,
      @JsonKey(name: "id") ApiRandomUserIdData? id,
      @JsonKey(name: "picture") ApiRandomUserPictureData? picture,
      @JsonKey(name: "nat") String? nat});

  @override
  $ApiRandomUserNameDataCopyWith<$Res>? get name;
  @override
  $ApiRandomUserLocationDataCopyWith<$Res>? get location;
  @override
  $ApiRandomUserLoginDataCopyWith<$Res>? get login;
  @override
  $ApiRandomUserDobDataCopyWith<$Res>? get dob;
  @override
  $ApiRandomUserDobDataCopyWith<$Res>? get registered;
  @override
  $ApiRandomUserIdDataCopyWith<$Res>? get id;
  @override
  $ApiRandomUserPictureDataCopyWith<$Res>? get picture;
}

/// @nodoc
class __$$ApiRandomUserDataImplCopyWithImpl<$Res>
    extends _$ApiRandomUserDataCopyWithImpl<$Res, _$ApiRandomUserDataImpl>
    implements _$$ApiRandomUserDataImplCopyWith<$Res> {
  __$$ApiRandomUserDataImplCopyWithImpl(_$ApiRandomUserDataImpl _value,
      $Res Function(_$ApiRandomUserDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiRandomUserData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = freezed,
    Object? name = freezed,
    Object? location = freezed,
    Object? email = freezed,
    Object? login = freezed,
    Object? dob = freezed,
    Object? registered = freezed,
    Object? phone = freezed,
    Object? cell = freezed,
    Object? id = freezed,
    Object? picture = freezed,
    Object? nat = freezed,
  }) {
    return _then(_$ApiRandomUserDataImpl(
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as ApiRandomUserNameData?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as ApiRandomUserLocationData?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as ApiRandomUserLoginData?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as ApiRandomUserDobData?,
      registered: freezed == registered
          ? _value.registered
          : registered // ignore: cast_nullable_to_non_nullable
              as ApiRandomUserDobData?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      cell: freezed == cell
          ? _value.cell
          : cell // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ApiRandomUserIdData?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as ApiRandomUserPictureData?,
      nat: freezed == nat
          ? _value.nat
          : nat // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiRandomUserDataImpl implements _ApiRandomUserData {
  const _$ApiRandomUserDataImpl(
      {@JsonKey(name: "gender") this.gender,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "location") this.location,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "login") this.login,
      @JsonKey(name: "dob") this.dob,
      @JsonKey(name: "registered") this.registered,
      @JsonKey(name: "phone") this.phone,
      @JsonKey(name: "cell") this.cell,
      @JsonKey(name: "id") this.id,
      @JsonKey(name: "picture") this.picture,
      @JsonKey(name: "nat") this.nat});

  factory _$ApiRandomUserDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiRandomUserDataImplFromJson(json);

  @override
  @JsonKey(name: "gender")
  final String? gender;
  @override
  @JsonKey(name: "name")
  final ApiRandomUserNameData? name;
  @override
  @JsonKey(name: "location")
  final ApiRandomUserLocationData? location;
  @override
  @JsonKey(name: "email")
  final String? email;
  @override
  @JsonKey(name: "login")
  final ApiRandomUserLoginData? login;
  @override
  @JsonKey(name: "dob")
  final ApiRandomUserDobData? dob;
  @override
  @JsonKey(name: "registered")
  final ApiRandomUserDobData? registered;
  @override
  @JsonKey(name: "phone")
  final String? phone;
  @override
  @JsonKey(name: "cell")
  final String? cell;
  @override
  @JsonKey(name: "id")
  final ApiRandomUserIdData? id;
  @override
  @JsonKey(name: "picture")
  final ApiRandomUserPictureData? picture;
  @override
  @JsonKey(name: "nat")
  final String? nat;

  @override
  String toString() {
    return 'ApiRandomUserData(gender: $gender, name: $name, location: $location, email: $email, login: $login, dob: $dob, registered: $registered, phone: $phone, cell: $cell, id: $id, picture: $picture, nat: $nat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiRandomUserDataImpl &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.registered, registered) ||
                other.registered == registered) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.cell, cell) || other.cell == cell) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.nat, nat) || other.nat == nat));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, gender, name, location, email,
      login, dob, registered, phone, cell, id, picture, nat);

  /// Create a copy of ApiRandomUserData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiRandomUserDataImplCopyWith<_$ApiRandomUserDataImpl> get copyWith =>
      __$$ApiRandomUserDataImplCopyWithImpl<_$ApiRandomUserDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiRandomUserDataImplToJson(
      this,
    );
  }
}

abstract class _ApiRandomUserData implements ApiRandomUserData {
  const factory _ApiRandomUserData(
      {@JsonKey(name: "gender") final String? gender,
      @JsonKey(name: "name") final ApiRandomUserNameData? name,
      @JsonKey(name: "location") final ApiRandomUserLocationData? location,
      @JsonKey(name: "email") final String? email,
      @JsonKey(name: "login") final ApiRandomUserLoginData? login,
      @JsonKey(name: "dob") final ApiRandomUserDobData? dob,
      @JsonKey(name: "registered") final ApiRandomUserDobData? registered,
      @JsonKey(name: "phone") final String? phone,
      @JsonKey(name: "cell") final String? cell,
      @JsonKey(name: "id") final ApiRandomUserIdData? id,
      @JsonKey(name: "picture") final ApiRandomUserPictureData? picture,
      @JsonKey(name: "nat") final String? nat}) = _$ApiRandomUserDataImpl;

  factory _ApiRandomUserData.fromJson(Map<String, dynamic> json) =
      _$ApiRandomUserDataImpl.fromJson;

  @override
  @JsonKey(name: "gender")
  String? get gender;
  @override
  @JsonKey(name: "name")
  ApiRandomUserNameData? get name;
  @override
  @JsonKey(name: "location")
  ApiRandomUserLocationData? get location;
  @override
  @JsonKey(name: "email")
  String? get email;
  @override
  @JsonKey(name: "login")
  ApiRandomUserLoginData? get login;
  @override
  @JsonKey(name: "dob")
  ApiRandomUserDobData? get dob;
  @override
  @JsonKey(name: "registered")
  ApiRandomUserDobData? get registered;
  @override
  @JsonKey(name: "phone")
  String? get phone;
  @override
  @JsonKey(name: "cell")
  String? get cell;
  @override
  @JsonKey(name: "id")
  ApiRandomUserIdData? get id;
  @override
  @JsonKey(name: "picture")
  ApiRandomUserPictureData? get picture;
  @override
  @JsonKey(name: "nat")
  String? get nat;

  /// Create a copy of ApiRandomUserData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiRandomUserDataImplCopyWith<_$ApiRandomUserDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiRandomUserDobData _$ApiRandomUserDobDataFromJson(Map<String, dynamic> json) {
  return _ApiRandomUserDobData.fromJson(json);
}

/// @nodoc
mixin _$ApiRandomUserDobData {
  @JsonKey(name: "date")
  DateTime? get date => throw _privateConstructorUsedError;
  @JsonKey(name: "age")
  int? get age => throw _privateConstructorUsedError;

  /// Serializes this ApiRandomUserDobData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiRandomUserDobData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiRandomUserDobDataCopyWith<ApiRandomUserDobData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiRandomUserDobDataCopyWith<$Res> {
  factory $ApiRandomUserDobDataCopyWith(ApiRandomUserDobData value,
          $Res Function(ApiRandomUserDobData) then) =
      _$ApiRandomUserDobDataCopyWithImpl<$Res, ApiRandomUserDobData>;
  @useResult
  $Res call(
      {@JsonKey(name: "date") DateTime? date, @JsonKey(name: "age") int? age});
}

/// @nodoc
class _$ApiRandomUserDobDataCopyWithImpl<$Res,
        $Val extends ApiRandomUserDobData>
    implements $ApiRandomUserDobDataCopyWith<$Res> {
  _$ApiRandomUserDobDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiRandomUserDobData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? age = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiRandomUserDobDataImplCopyWith<$Res>
    implements $ApiRandomUserDobDataCopyWith<$Res> {
  factory _$$ApiRandomUserDobDataImplCopyWith(_$ApiRandomUserDobDataImpl value,
          $Res Function(_$ApiRandomUserDobDataImpl) then) =
      __$$ApiRandomUserDobDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "date") DateTime? date, @JsonKey(name: "age") int? age});
}

/// @nodoc
class __$$ApiRandomUserDobDataImplCopyWithImpl<$Res>
    extends _$ApiRandomUserDobDataCopyWithImpl<$Res, _$ApiRandomUserDobDataImpl>
    implements _$$ApiRandomUserDobDataImplCopyWith<$Res> {
  __$$ApiRandomUserDobDataImplCopyWithImpl(_$ApiRandomUserDobDataImpl _value,
      $Res Function(_$ApiRandomUserDobDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiRandomUserDobData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? age = freezed,
  }) {
    return _then(_$ApiRandomUserDobDataImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiRandomUserDobDataImpl implements _ApiRandomUserDobData {
  const _$ApiRandomUserDobDataImpl(
      {@JsonKey(name: "date") this.date, @JsonKey(name: "age") this.age});

  factory _$ApiRandomUserDobDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiRandomUserDobDataImplFromJson(json);

  @override
  @JsonKey(name: "date")
  final DateTime? date;
  @override
  @JsonKey(name: "age")
  final int? age;

  @override
  String toString() {
    return 'ApiRandomUserDobData(date: $date, age: $age)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiRandomUserDobDataImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.age, age) || other.age == age));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, age);

  /// Create a copy of ApiRandomUserDobData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiRandomUserDobDataImplCopyWith<_$ApiRandomUserDobDataImpl>
      get copyWith =>
          __$$ApiRandomUserDobDataImplCopyWithImpl<_$ApiRandomUserDobDataImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiRandomUserDobDataImplToJson(
      this,
    );
  }
}

abstract class _ApiRandomUserDobData implements ApiRandomUserDobData {
  const factory _ApiRandomUserDobData(
      {@JsonKey(name: "date") final DateTime? date,
      @JsonKey(name: "age") final int? age}) = _$ApiRandomUserDobDataImpl;

  factory _ApiRandomUserDobData.fromJson(Map<String, dynamic> json) =
      _$ApiRandomUserDobDataImpl.fromJson;

  @override
  @JsonKey(name: "date")
  DateTime? get date;
  @override
  @JsonKey(name: "age")
  int? get age;

  /// Create a copy of ApiRandomUserDobData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiRandomUserDobDataImplCopyWith<_$ApiRandomUserDobDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiRandomUserIdData _$ApiRandomUserIdDataFromJson(Map<String, dynamic> json) {
  return _ApiRandomUserIdData.fromJson(json);
}

/// @nodoc
mixin _$ApiRandomUserIdData {
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "value")
  String? get value => throw _privateConstructorUsedError;

  /// Serializes this ApiRandomUserIdData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiRandomUserIdData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiRandomUserIdDataCopyWith<ApiRandomUserIdData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiRandomUserIdDataCopyWith<$Res> {
  factory $ApiRandomUserIdDataCopyWith(
          ApiRandomUserIdData value, $Res Function(ApiRandomUserIdData) then) =
      _$ApiRandomUserIdDataCopyWithImpl<$Res, ApiRandomUserIdData>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "value") String? value});
}

/// @nodoc
class _$ApiRandomUserIdDataCopyWithImpl<$Res, $Val extends ApiRandomUserIdData>
    implements $ApiRandomUserIdDataCopyWith<$Res> {
  _$ApiRandomUserIdDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiRandomUserIdData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiRandomUserIdDataImplCopyWith<$Res>
    implements $ApiRandomUserIdDataCopyWith<$Res> {
  factory _$$ApiRandomUserIdDataImplCopyWith(_$ApiRandomUserIdDataImpl value,
          $Res Function(_$ApiRandomUserIdDataImpl) then) =
      __$$ApiRandomUserIdDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "value") String? value});
}

/// @nodoc
class __$$ApiRandomUserIdDataImplCopyWithImpl<$Res>
    extends _$ApiRandomUserIdDataCopyWithImpl<$Res, _$ApiRandomUserIdDataImpl>
    implements _$$ApiRandomUserIdDataImplCopyWith<$Res> {
  __$$ApiRandomUserIdDataImplCopyWithImpl(_$ApiRandomUserIdDataImpl _value,
      $Res Function(_$ApiRandomUserIdDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiRandomUserIdData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
  }) {
    return _then(_$ApiRandomUserIdDataImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiRandomUserIdDataImpl implements _ApiRandomUserIdData {
  const _$ApiRandomUserIdDataImpl(
      {@JsonKey(name: "name") this.name, @JsonKey(name: "value") this.value});

  factory _$ApiRandomUserIdDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiRandomUserIdDataImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "value")
  final String? value;

  @override
  String toString() {
    return 'ApiRandomUserIdData(name: $name, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiRandomUserIdDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, value);

  /// Create a copy of ApiRandomUserIdData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiRandomUserIdDataImplCopyWith<_$ApiRandomUserIdDataImpl> get copyWith =>
      __$$ApiRandomUserIdDataImplCopyWithImpl<_$ApiRandomUserIdDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiRandomUserIdDataImplToJson(
      this,
    );
  }
}

abstract class _ApiRandomUserIdData implements ApiRandomUserIdData {
  const factory _ApiRandomUserIdData(
      {@JsonKey(name: "name") final String? name,
      @JsonKey(name: "value") final String? value}) = _$ApiRandomUserIdDataImpl;

  factory _ApiRandomUserIdData.fromJson(Map<String, dynamic> json) =
      _$ApiRandomUserIdDataImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "value")
  String? get value;

  /// Create a copy of ApiRandomUserIdData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiRandomUserIdDataImplCopyWith<_$ApiRandomUserIdDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiRandomUserLocationData _$ApiRandomUserLocationDataFromJson(
    Map<String, dynamic> json) {
  return _ApiRandomUserLocationData.fromJson(json);
}

/// @nodoc
mixin _$ApiRandomUserLocationData {
  @JsonKey(name: "street")
  ApiRandomUserStreetData? get street => throw _privateConstructorUsedError;
  @JsonKey(name: "city")
  String? get city => throw _privateConstructorUsedError;
  @JsonKey(name: "state")
  String? get state => throw _privateConstructorUsedError;
  @JsonKey(name: "country")
  String? get country => throw _privateConstructorUsedError;
  @JsonKey(name: "postcode")
  dynamic get postcode => throw _privateConstructorUsedError;
  @JsonKey(name: "coordinates")
  ApiRandomUserCoordinatesData? get coordinates =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "timezone")
  ApiRandomUserTimezoneData? get timezone => throw _privateConstructorUsedError;

  /// Serializes this ApiRandomUserLocationData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiRandomUserLocationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiRandomUserLocationDataCopyWith<ApiRandomUserLocationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiRandomUserLocationDataCopyWith<$Res> {
  factory $ApiRandomUserLocationDataCopyWith(ApiRandomUserLocationData value,
          $Res Function(ApiRandomUserLocationData) then) =
      _$ApiRandomUserLocationDataCopyWithImpl<$Res, ApiRandomUserLocationData>;
  @useResult
  $Res call(
      {@JsonKey(name: "street") ApiRandomUserStreetData? street,
      @JsonKey(name: "city") String? city,
      @JsonKey(name: "state") String? state,
      @JsonKey(name: "country") String? country,
      @JsonKey(name: "postcode") dynamic postcode,
      @JsonKey(name: "coordinates") ApiRandomUserCoordinatesData? coordinates,
      @JsonKey(name: "timezone") ApiRandomUserTimezoneData? timezone});

  $ApiRandomUserStreetDataCopyWith<$Res>? get street;
  $ApiRandomUserCoordinatesDataCopyWith<$Res>? get coordinates;
  $ApiRandomUserTimezoneDataCopyWith<$Res>? get timezone;
}

/// @nodoc
class _$ApiRandomUserLocationDataCopyWithImpl<$Res,
        $Val extends ApiRandomUserLocationData>
    implements $ApiRandomUserLocationDataCopyWith<$Res> {
  _$ApiRandomUserLocationDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiRandomUserLocationData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? street = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? postcode = freezed,
    Object? coordinates = freezed,
    Object? timezone = freezed,
  }) {
    return _then(_value.copyWith(
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as ApiRandomUserStreetData?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      postcode: freezed == postcode
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      coordinates: freezed == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as ApiRandomUserCoordinatesData?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as ApiRandomUserTimezoneData?,
    ) as $Val);
  }

  /// Create a copy of ApiRandomUserLocationData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiRandomUserStreetDataCopyWith<$Res>? get street {
    if (_value.street == null) {
      return null;
    }

    return $ApiRandomUserStreetDataCopyWith<$Res>(_value.street!, (value) {
      return _then(_value.copyWith(street: value) as $Val);
    });
  }

  /// Create a copy of ApiRandomUserLocationData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiRandomUserCoordinatesDataCopyWith<$Res>? get coordinates {
    if (_value.coordinates == null) {
      return null;
    }

    return $ApiRandomUserCoordinatesDataCopyWith<$Res>(_value.coordinates!,
        (value) {
      return _then(_value.copyWith(coordinates: value) as $Val);
    });
  }

  /// Create a copy of ApiRandomUserLocationData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiRandomUserTimezoneDataCopyWith<$Res>? get timezone {
    if (_value.timezone == null) {
      return null;
    }

    return $ApiRandomUserTimezoneDataCopyWith<$Res>(_value.timezone!, (value) {
      return _then(_value.copyWith(timezone: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApiRandomUserLocationDataImplCopyWith<$Res>
    implements $ApiRandomUserLocationDataCopyWith<$Res> {
  factory _$$ApiRandomUserLocationDataImplCopyWith(
          _$ApiRandomUserLocationDataImpl value,
          $Res Function(_$ApiRandomUserLocationDataImpl) then) =
      __$$ApiRandomUserLocationDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "street") ApiRandomUserStreetData? street,
      @JsonKey(name: "city") String? city,
      @JsonKey(name: "state") String? state,
      @JsonKey(name: "country") String? country,
      @JsonKey(name: "postcode") dynamic postcode,
      @JsonKey(name: "coordinates") ApiRandomUserCoordinatesData? coordinates,
      @JsonKey(name: "timezone") ApiRandomUserTimezoneData? timezone});

  @override
  $ApiRandomUserStreetDataCopyWith<$Res>? get street;
  @override
  $ApiRandomUserCoordinatesDataCopyWith<$Res>? get coordinates;
  @override
  $ApiRandomUserTimezoneDataCopyWith<$Res>? get timezone;
}

/// @nodoc
class __$$ApiRandomUserLocationDataImplCopyWithImpl<$Res>
    extends _$ApiRandomUserLocationDataCopyWithImpl<$Res,
        _$ApiRandomUserLocationDataImpl>
    implements _$$ApiRandomUserLocationDataImplCopyWith<$Res> {
  __$$ApiRandomUserLocationDataImplCopyWithImpl(
      _$ApiRandomUserLocationDataImpl _value,
      $Res Function(_$ApiRandomUserLocationDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiRandomUserLocationData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? street = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? postcode = freezed,
    Object? coordinates = freezed,
    Object? timezone = freezed,
  }) {
    return _then(_$ApiRandomUserLocationDataImpl(
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as ApiRandomUserStreetData?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      postcode: freezed == postcode
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      coordinates: freezed == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as ApiRandomUserCoordinatesData?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as ApiRandomUserTimezoneData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiRandomUserLocationDataImpl implements _ApiRandomUserLocationData {
  const _$ApiRandomUserLocationDataImpl(
      {@JsonKey(name: "street") this.street,
      @JsonKey(name: "city") this.city,
      @JsonKey(name: "state") this.state,
      @JsonKey(name: "country") this.country,
      @JsonKey(name: "postcode") this.postcode,
      @JsonKey(name: "coordinates") this.coordinates,
      @JsonKey(name: "timezone") this.timezone});

  factory _$ApiRandomUserLocationDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiRandomUserLocationDataImplFromJson(json);

  @override
  @JsonKey(name: "street")
  final ApiRandomUserStreetData? street;
  @override
  @JsonKey(name: "city")
  final String? city;
  @override
  @JsonKey(name: "state")
  final String? state;
  @override
  @JsonKey(name: "country")
  final String? country;
  @override
  @JsonKey(name: "postcode")
  final dynamic postcode;
  @override
  @JsonKey(name: "coordinates")
  final ApiRandomUserCoordinatesData? coordinates;
  @override
  @JsonKey(name: "timezone")
  final ApiRandomUserTimezoneData? timezone;

  @override
  String toString() {
    return 'ApiRandomUserLocationData(street: $street, city: $city, state: $state, country: $country, postcode: $postcode, coordinates: $coordinates, timezone: $timezone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiRandomUserLocationDataImpl &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.country, country) || other.country == country) &&
            const DeepCollectionEquality().equals(other.postcode, postcode) &&
            (identical(other.coordinates, coordinates) ||
                other.coordinates == coordinates) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, street, city, state, country,
      const DeepCollectionEquality().hash(postcode), coordinates, timezone);

  /// Create a copy of ApiRandomUserLocationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiRandomUserLocationDataImplCopyWith<_$ApiRandomUserLocationDataImpl>
      get copyWith => __$$ApiRandomUserLocationDataImplCopyWithImpl<
          _$ApiRandomUserLocationDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiRandomUserLocationDataImplToJson(
      this,
    );
  }
}

abstract class _ApiRandomUserLocationData implements ApiRandomUserLocationData {
  const factory _ApiRandomUserLocationData(
          {@JsonKey(name: "street") final ApiRandomUserStreetData? street,
          @JsonKey(name: "city") final String? city,
          @JsonKey(name: "state") final String? state,
          @JsonKey(name: "country") final String? country,
          @JsonKey(name: "postcode") final dynamic postcode,
          @JsonKey(name: "coordinates")
          final ApiRandomUserCoordinatesData? coordinates,
          @JsonKey(name: "timezone")
          final ApiRandomUserTimezoneData? timezone}) =
      _$ApiRandomUserLocationDataImpl;

  factory _ApiRandomUserLocationData.fromJson(Map<String, dynamic> json) =
      _$ApiRandomUserLocationDataImpl.fromJson;

  @override
  @JsonKey(name: "street")
  ApiRandomUserStreetData? get street;
  @override
  @JsonKey(name: "city")
  String? get city;
  @override
  @JsonKey(name: "state")
  String? get state;
  @override
  @JsonKey(name: "country")
  String? get country;
  @override
  @JsonKey(name: "postcode")
  dynamic get postcode;
  @override
  @JsonKey(name: "coordinates")
  ApiRandomUserCoordinatesData? get coordinates;
  @override
  @JsonKey(name: "timezone")
  ApiRandomUserTimezoneData? get timezone;

  /// Create a copy of ApiRandomUserLocationData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiRandomUserLocationDataImplCopyWith<_$ApiRandomUserLocationDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiRandomUserCoordinatesData _$ApiRandomUserCoordinatesDataFromJson(
    Map<String, dynamic> json) {
  return _ApiRandomUserCoordinatesData.fromJson(json);
}

/// @nodoc
mixin _$ApiRandomUserCoordinatesData {
  @JsonKey(name: "latitude")
  String? get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: "longitude")
  String? get longitude => throw _privateConstructorUsedError;

  /// Serializes this ApiRandomUserCoordinatesData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiRandomUserCoordinatesData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiRandomUserCoordinatesDataCopyWith<ApiRandomUserCoordinatesData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiRandomUserCoordinatesDataCopyWith<$Res> {
  factory $ApiRandomUserCoordinatesDataCopyWith(
          ApiRandomUserCoordinatesData value,
          $Res Function(ApiRandomUserCoordinatesData) then) =
      _$ApiRandomUserCoordinatesDataCopyWithImpl<$Res,
          ApiRandomUserCoordinatesData>;
  @useResult
  $Res call(
      {@JsonKey(name: "latitude") String? latitude,
      @JsonKey(name: "longitude") String? longitude});
}

/// @nodoc
class _$ApiRandomUserCoordinatesDataCopyWithImpl<$Res,
        $Val extends ApiRandomUserCoordinatesData>
    implements $ApiRandomUserCoordinatesDataCopyWith<$Res> {
  _$ApiRandomUserCoordinatesDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiRandomUserCoordinatesData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiRandomUserCoordinatesDataImplCopyWith<$Res>
    implements $ApiRandomUserCoordinatesDataCopyWith<$Res> {
  factory _$$ApiRandomUserCoordinatesDataImplCopyWith(
          _$ApiRandomUserCoordinatesDataImpl value,
          $Res Function(_$ApiRandomUserCoordinatesDataImpl) then) =
      __$$ApiRandomUserCoordinatesDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "latitude") String? latitude,
      @JsonKey(name: "longitude") String? longitude});
}

/// @nodoc
class __$$ApiRandomUserCoordinatesDataImplCopyWithImpl<$Res>
    extends _$ApiRandomUserCoordinatesDataCopyWithImpl<$Res,
        _$ApiRandomUserCoordinatesDataImpl>
    implements _$$ApiRandomUserCoordinatesDataImplCopyWith<$Res> {
  __$$ApiRandomUserCoordinatesDataImplCopyWithImpl(
      _$ApiRandomUserCoordinatesDataImpl _value,
      $Res Function(_$ApiRandomUserCoordinatesDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiRandomUserCoordinatesData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$ApiRandomUserCoordinatesDataImpl(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiRandomUserCoordinatesDataImpl
    implements _ApiRandomUserCoordinatesData {
  const _$ApiRandomUserCoordinatesDataImpl(
      {@JsonKey(name: "latitude") this.latitude,
      @JsonKey(name: "longitude") this.longitude});

  factory _$ApiRandomUserCoordinatesDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiRandomUserCoordinatesDataImplFromJson(json);

  @override
  @JsonKey(name: "latitude")
  final String? latitude;
  @override
  @JsonKey(name: "longitude")
  final String? longitude;

  @override
  String toString() {
    return 'ApiRandomUserCoordinatesData(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiRandomUserCoordinatesDataImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  /// Create a copy of ApiRandomUserCoordinatesData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiRandomUserCoordinatesDataImplCopyWith<
          _$ApiRandomUserCoordinatesDataImpl>
      get copyWith => __$$ApiRandomUserCoordinatesDataImplCopyWithImpl<
          _$ApiRandomUserCoordinatesDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiRandomUserCoordinatesDataImplToJson(
      this,
    );
  }
}

abstract class _ApiRandomUserCoordinatesData
    implements ApiRandomUserCoordinatesData {
  const factory _ApiRandomUserCoordinatesData(
          {@JsonKey(name: "latitude") final String? latitude,
          @JsonKey(name: "longitude") final String? longitude}) =
      _$ApiRandomUserCoordinatesDataImpl;

  factory _ApiRandomUserCoordinatesData.fromJson(Map<String, dynamic> json) =
      _$ApiRandomUserCoordinatesDataImpl.fromJson;

  @override
  @JsonKey(name: "latitude")
  String? get latitude;
  @override
  @JsonKey(name: "longitude")
  String? get longitude;

  /// Create a copy of ApiRandomUserCoordinatesData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiRandomUserCoordinatesDataImplCopyWith<
          _$ApiRandomUserCoordinatesDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiRandomUserStreetData _$ApiRandomUserStreetDataFromJson(
    Map<String, dynamic> json) {
  return _ApiRandomUserStreetData.fromJson(json);
}

/// @nodoc
mixin _$ApiRandomUserStreetData {
  @JsonKey(name: "number")
  int? get number => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this ApiRandomUserStreetData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiRandomUserStreetData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiRandomUserStreetDataCopyWith<ApiRandomUserStreetData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiRandomUserStreetDataCopyWith<$Res> {
  factory $ApiRandomUserStreetDataCopyWith(ApiRandomUserStreetData value,
          $Res Function(ApiRandomUserStreetData) then) =
      _$ApiRandomUserStreetDataCopyWithImpl<$Res, ApiRandomUserStreetData>;
  @useResult
  $Res call(
      {@JsonKey(name: "number") int? number,
      @JsonKey(name: "name") String? name});
}

/// @nodoc
class _$ApiRandomUserStreetDataCopyWithImpl<$Res,
        $Val extends ApiRandomUserStreetData>
    implements $ApiRandomUserStreetDataCopyWith<$Res> {
  _$ApiRandomUserStreetDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiRandomUserStreetData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiRandomUserStreetDataImplCopyWith<$Res>
    implements $ApiRandomUserStreetDataCopyWith<$Res> {
  factory _$$ApiRandomUserStreetDataImplCopyWith(
          _$ApiRandomUserStreetDataImpl value,
          $Res Function(_$ApiRandomUserStreetDataImpl) then) =
      __$$ApiRandomUserStreetDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "number") int? number,
      @JsonKey(name: "name") String? name});
}

/// @nodoc
class __$$ApiRandomUserStreetDataImplCopyWithImpl<$Res>
    extends _$ApiRandomUserStreetDataCopyWithImpl<$Res,
        _$ApiRandomUserStreetDataImpl>
    implements _$$ApiRandomUserStreetDataImplCopyWith<$Res> {
  __$$ApiRandomUserStreetDataImplCopyWithImpl(
      _$ApiRandomUserStreetDataImpl _value,
      $Res Function(_$ApiRandomUserStreetDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiRandomUserStreetData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? name = freezed,
  }) {
    return _then(_$ApiRandomUserStreetDataImpl(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiRandomUserStreetDataImpl implements _ApiRandomUserStreetData {
  const _$ApiRandomUserStreetDataImpl(
      {@JsonKey(name: "number") this.number, @JsonKey(name: "name") this.name});

  factory _$ApiRandomUserStreetDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiRandomUserStreetDataImplFromJson(json);

  @override
  @JsonKey(name: "number")
  final int? number;
  @override
  @JsonKey(name: "name")
  final String? name;

  @override
  String toString() {
    return 'ApiRandomUserStreetData(number: $number, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiRandomUserStreetDataImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, number, name);

  /// Create a copy of ApiRandomUserStreetData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiRandomUserStreetDataImplCopyWith<_$ApiRandomUserStreetDataImpl>
      get copyWith => __$$ApiRandomUserStreetDataImplCopyWithImpl<
          _$ApiRandomUserStreetDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiRandomUserStreetDataImplToJson(
      this,
    );
  }
}

abstract class _ApiRandomUserStreetData implements ApiRandomUserStreetData {
  const factory _ApiRandomUserStreetData(
          {@JsonKey(name: "number") final int? number,
          @JsonKey(name: "name") final String? name}) =
      _$ApiRandomUserStreetDataImpl;

  factory _ApiRandomUserStreetData.fromJson(Map<String, dynamic> json) =
      _$ApiRandomUserStreetDataImpl.fromJson;

  @override
  @JsonKey(name: "number")
  int? get number;
  @override
  @JsonKey(name: "name")
  String? get name;

  /// Create a copy of ApiRandomUserStreetData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiRandomUserStreetDataImplCopyWith<_$ApiRandomUserStreetDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiRandomUserTimezoneData _$ApiRandomUserTimezoneDataFromJson(
    Map<String, dynamic> json) {
  return _ApiRandomUserTimezoneData.fromJson(json);
}

/// @nodoc
mixin _$ApiRandomUserTimezoneData {
  @JsonKey(name: "offset")
  String? get offset => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this ApiRandomUserTimezoneData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiRandomUserTimezoneData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiRandomUserTimezoneDataCopyWith<ApiRandomUserTimezoneData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiRandomUserTimezoneDataCopyWith<$Res> {
  factory $ApiRandomUserTimezoneDataCopyWith(ApiRandomUserTimezoneData value,
          $Res Function(ApiRandomUserTimezoneData) then) =
      _$ApiRandomUserTimezoneDataCopyWithImpl<$Res, ApiRandomUserTimezoneData>;
  @useResult
  $Res call(
      {@JsonKey(name: "offset") String? offset,
      @JsonKey(name: "description") String? description});
}

/// @nodoc
class _$ApiRandomUserTimezoneDataCopyWithImpl<$Res,
        $Val extends ApiRandomUserTimezoneData>
    implements $ApiRandomUserTimezoneDataCopyWith<$Res> {
  _$ApiRandomUserTimezoneDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiRandomUserTimezoneData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiRandomUserTimezoneDataImplCopyWith<$Res>
    implements $ApiRandomUserTimezoneDataCopyWith<$Res> {
  factory _$$ApiRandomUserTimezoneDataImplCopyWith(
          _$ApiRandomUserTimezoneDataImpl value,
          $Res Function(_$ApiRandomUserTimezoneDataImpl) then) =
      __$$ApiRandomUserTimezoneDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "offset") String? offset,
      @JsonKey(name: "description") String? description});
}

/// @nodoc
class __$$ApiRandomUserTimezoneDataImplCopyWithImpl<$Res>
    extends _$ApiRandomUserTimezoneDataCopyWithImpl<$Res,
        _$ApiRandomUserTimezoneDataImpl>
    implements _$$ApiRandomUserTimezoneDataImplCopyWith<$Res> {
  __$$ApiRandomUserTimezoneDataImplCopyWithImpl(
      _$ApiRandomUserTimezoneDataImpl _value,
      $Res Function(_$ApiRandomUserTimezoneDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiRandomUserTimezoneData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = freezed,
    Object? description = freezed,
  }) {
    return _then(_$ApiRandomUserTimezoneDataImpl(
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiRandomUserTimezoneDataImpl implements _ApiRandomUserTimezoneData {
  const _$ApiRandomUserTimezoneDataImpl(
      {@JsonKey(name: "offset") this.offset,
      @JsonKey(name: "description") this.description});

  factory _$ApiRandomUserTimezoneDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiRandomUserTimezoneDataImplFromJson(json);

  @override
  @JsonKey(name: "offset")
  final String? offset;
  @override
  @JsonKey(name: "description")
  final String? description;

  @override
  String toString() {
    return 'ApiRandomUserTimezoneData(offset: $offset, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiRandomUserTimezoneDataImpl &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, offset, description);

  /// Create a copy of ApiRandomUserTimezoneData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiRandomUserTimezoneDataImplCopyWith<_$ApiRandomUserTimezoneDataImpl>
      get copyWith => __$$ApiRandomUserTimezoneDataImplCopyWithImpl<
          _$ApiRandomUserTimezoneDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiRandomUserTimezoneDataImplToJson(
      this,
    );
  }
}

abstract class _ApiRandomUserTimezoneData implements ApiRandomUserTimezoneData {
  const factory _ApiRandomUserTimezoneData(
          {@JsonKey(name: "offset") final String? offset,
          @JsonKey(name: "description") final String? description}) =
      _$ApiRandomUserTimezoneDataImpl;

  factory _ApiRandomUserTimezoneData.fromJson(Map<String, dynamic> json) =
      _$ApiRandomUserTimezoneDataImpl.fromJson;

  @override
  @JsonKey(name: "offset")
  String? get offset;
  @override
  @JsonKey(name: "description")
  String? get description;

  /// Create a copy of ApiRandomUserTimezoneData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiRandomUserTimezoneDataImplCopyWith<_$ApiRandomUserTimezoneDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiRandomUserLoginData _$ApiRandomUserLoginDataFromJson(
    Map<String, dynamic> json) {
  return _ApiRandomUserLoginData.fromJson(json);
}

/// @nodoc
mixin _$ApiRandomUserLoginData {
  @JsonKey(name: "uuid")
  String? get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: "password")
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(name: "salt")
  String? get salt => throw _privateConstructorUsedError;
  @JsonKey(name: "md5")
  String? get md5 => throw _privateConstructorUsedError;
  @JsonKey(name: "sha1")
  String? get sha1 => throw _privateConstructorUsedError;
  @JsonKey(name: "sha256")
  String? get sha256 => throw _privateConstructorUsedError;

  /// Serializes this ApiRandomUserLoginData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiRandomUserLoginData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiRandomUserLoginDataCopyWith<ApiRandomUserLoginData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiRandomUserLoginDataCopyWith<$Res> {
  factory $ApiRandomUserLoginDataCopyWith(ApiRandomUserLoginData value,
          $Res Function(ApiRandomUserLoginData) then) =
      _$ApiRandomUserLoginDataCopyWithImpl<$Res, ApiRandomUserLoginData>;
  @useResult
  $Res call(
      {@JsonKey(name: "uuid") String? uuid,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "password") String? password,
      @JsonKey(name: "salt") String? salt,
      @JsonKey(name: "md5") String? md5,
      @JsonKey(name: "sha1") String? sha1,
      @JsonKey(name: "sha256") String? sha256});
}

/// @nodoc
class _$ApiRandomUserLoginDataCopyWithImpl<$Res,
        $Val extends ApiRandomUserLoginData>
    implements $ApiRandomUserLoginDataCopyWith<$Res> {
  _$ApiRandomUserLoginDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiRandomUserLoginData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = freezed,
    Object? username = freezed,
    Object? password = freezed,
    Object? salt = freezed,
    Object? md5 = freezed,
    Object? sha1 = freezed,
    Object? sha256 = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      salt: freezed == salt
          ? _value.salt
          : salt // ignore: cast_nullable_to_non_nullable
              as String?,
      md5: freezed == md5
          ? _value.md5
          : md5 // ignore: cast_nullable_to_non_nullable
              as String?,
      sha1: freezed == sha1
          ? _value.sha1
          : sha1 // ignore: cast_nullable_to_non_nullable
              as String?,
      sha256: freezed == sha256
          ? _value.sha256
          : sha256 // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiRandomUserLoginDataImplCopyWith<$Res>
    implements $ApiRandomUserLoginDataCopyWith<$Res> {
  factory _$$ApiRandomUserLoginDataImplCopyWith(
          _$ApiRandomUserLoginDataImpl value,
          $Res Function(_$ApiRandomUserLoginDataImpl) then) =
      __$$ApiRandomUserLoginDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "uuid") String? uuid,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "password") String? password,
      @JsonKey(name: "salt") String? salt,
      @JsonKey(name: "md5") String? md5,
      @JsonKey(name: "sha1") String? sha1,
      @JsonKey(name: "sha256") String? sha256});
}

/// @nodoc
class __$$ApiRandomUserLoginDataImplCopyWithImpl<$Res>
    extends _$ApiRandomUserLoginDataCopyWithImpl<$Res,
        _$ApiRandomUserLoginDataImpl>
    implements _$$ApiRandomUserLoginDataImplCopyWith<$Res> {
  __$$ApiRandomUserLoginDataImplCopyWithImpl(
      _$ApiRandomUserLoginDataImpl _value,
      $Res Function(_$ApiRandomUserLoginDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiRandomUserLoginData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = freezed,
    Object? username = freezed,
    Object? password = freezed,
    Object? salt = freezed,
    Object? md5 = freezed,
    Object? sha1 = freezed,
    Object? sha256 = freezed,
  }) {
    return _then(_$ApiRandomUserLoginDataImpl(
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      salt: freezed == salt
          ? _value.salt
          : salt // ignore: cast_nullable_to_non_nullable
              as String?,
      md5: freezed == md5
          ? _value.md5
          : md5 // ignore: cast_nullable_to_non_nullable
              as String?,
      sha1: freezed == sha1
          ? _value.sha1
          : sha1 // ignore: cast_nullable_to_non_nullable
              as String?,
      sha256: freezed == sha256
          ? _value.sha256
          : sha256 // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiRandomUserLoginDataImpl implements _ApiRandomUserLoginData {
  const _$ApiRandomUserLoginDataImpl(
      {@JsonKey(name: "uuid") this.uuid,
      @JsonKey(name: "username") this.username,
      @JsonKey(name: "password") this.password,
      @JsonKey(name: "salt") this.salt,
      @JsonKey(name: "md5") this.md5,
      @JsonKey(name: "sha1") this.sha1,
      @JsonKey(name: "sha256") this.sha256});

  factory _$ApiRandomUserLoginDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiRandomUserLoginDataImplFromJson(json);

  @override
  @JsonKey(name: "uuid")
  final String? uuid;
  @override
  @JsonKey(name: "username")
  final String? username;
  @override
  @JsonKey(name: "password")
  final String? password;
  @override
  @JsonKey(name: "salt")
  final String? salt;
  @override
  @JsonKey(name: "md5")
  final String? md5;
  @override
  @JsonKey(name: "sha1")
  final String? sha1;
  @override
  @JsonKey(name: "sha256")
  final String? sha256;

  @override
  String toString() {
    return 'ApiRandomUserLoginData(uuid: $uuid, username: $username, password: $password, salt: $salt, md5: $md5, sha1: $sha1, sha256: $sha256)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiRandomUserLoginDataImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.salt, salt) || other.salt == salt) &&
            (identical(other.md5, md5) || other.md5 == md5) &&
            (identical(other.sha1, sha1) || other.sha1 == sha1) &&
            (identical(other.sha256, sha256) || other.sha256 == sha256));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, uuid, username, password, salt, md5, sha1, sha256);

  /// Create a copy of ApiRandomUserLoginData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiRandomUserLoginDataImplCopyWith<_$ApiRandomUserLoginDataImpl>
      get copyWith => __$$ApiRandomUserLoginDataImplCopyWithImpl<
          _$ApiRandomUserLoginDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiRandomUserLoginDataImplToJson(
      this,
    );
  }
}

abstract class _ApiRandomUserLoginData implements ApiRandomUserLoginData {
  const factory _ApiRandomUserLoginData(
          {@JsonKey(name: "uuid") final String? uuid,
          @JsonKey(name: "username") final String? username,
          @JsonKey(name: "password") final String? password,
          @JsonKey(name: "salt") final String? salt,
          @JsonKey(name: "md5") final String? md5,
          @JsonKey(name: "sha1") final String? sha1,
          @JsonKey(name: "sha256") final String? sha256}) =
      _$ApiRandomUserLoginDataImpl;

  factory _ApiRandomUserLoginData.fromJson(Map<String, dynamic> json) =
      _$ApiRandomUserLoginDataImpl.fromJson;

  @override
  @JsonKey(name: "uuid")
  String? get uuid;
  @override
  @JsonKey(name: "username")
  String? get username;
  @override
  @JsonKey(name: "password")
  String? get password;
  @override
  @JsonKey(name: "salt")
  String? get salt;
  @override
  @JsonKey(name: "md5")
  String? get md5;
  @override
  @JsonKey(name: "sha1")
  String? get sha1;
  @override
  @JsonKey(name: "sha256")
  String? get sha256;

  /// Create a copy of ApiRandomUserLoginData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiRandomUserLoginDataImplCopyWith<_$ApiRandomUserLoginDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiRandomUserNameData _$ApiRandomUserNameDataFromJson(
    Map<String, dynamic> json) {
  return _ApiRandomUserNameData.fromJson(json);
}

/// @nodoc
mixin _$ApiRandomUserNameData {
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "first")
  String? get first => throw _privateConstructorUsedError;
  @JsonKey(name: "last")
  String? get last => throw _privateConstructorUsedError;

  /// Serializes this ApiRandomUserNameData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiRandomUserNameData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiRandomUserNameDataCopyWith<ApiRandomUserNameData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiRandomUserNameDataCopyWith<$Res> {
  factory $ApiRandomUserNameDataCopyWith(ApiRandomUserNameData value,
          $Res Function(ApiRandomUserNameData) then) =
      _$ApiRandomUserNameDataCopyWithImpl<$Res, ApiRandomUserNameData>;
  @useResult
  $Res call(
      {@JsonKey(name: "title") String? title,
      @JsonKey(name: "first") String? first,
      @JsonKey(name: "last") String? last});
}

/// @nodoc
class _$ApiRandomUserNameDataCopyWithImpl<$Res,
        $Val extends ApiRandomUserNameData>
    implements $ApiRandomUserNameDataCopyWith<$Res> {
  _$ApiRandomUserNameDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiRandomUserNameData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? first = freezed,
    Object? last = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      first: freezed == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as String?,
      last: freezed == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiRandomUserNameDataImplCopyWith<$Res>
    implements $ApiRandomUserNameDataCopyWith<$Res> {
  factory _$$ApiRandomUserNameDataImplCopyWith(
          _$ApiRandomUserNameDataImpl value,
          $Res Function(_$ApiRandomUserNameDataImpl) then) =
      __$$ApiRandomUserNameDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "title") String? title,
      @JsonKey(name: "first") String? first,
      @JsonKey(name: "last") String? last});
}

/// @nodoc
class __$$ApiRandomUserNameDataImplCopyWithImpl<$Res>
    extends _$ApiRandomUserNameDataCopyWithImpl<$Res,
        _$ApiRandomUserNameDataImpl>
    implements _$$ApiRandomUserNameDataImplCopyWith<$Res> {
  __$$ApiRandomUserNameDataImplCopyWithImpl(_$ApiRandomUserNameDataImpl _value,
      $Res Function(_$ApiRandomUserNameDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiRandomUserNameData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? first = freezed,
    Object? last = freezed,
  }) {
    return _then(_$ApiRandomUserNameDataImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      first: freezed == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as String?,
      last: freezed == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiRandomUserNameDataImpl implements _ApiRandomUserNameData {
  const _$ApiRandomUserNameDataImpl(
      {@JsonKey(name: "title") this.title,
      @JsonKey(name: "first") this.first,
      @JsonKey(name: "last") this.last});

  factory _$ApiRandomUserNameDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiRandomUserNameDataImplFromJson(json);

  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "first")
  final String? first;
  @override
  @JsonKey(name: "last")
  final String? last;

  @override
  String toString() {
    return 'ApiRandomUserNameData(title: $title, first: $first, last: $last)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiRandomUserNameDataImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.first, first) || other.first == first) &&
            (identical(other.last, last) || other.last == last));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, first, last);

  /// Create a copy of ApiRandomUserNameData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiRandomUserNameDataImplCopyWith<_$ApiRandomUserNameDataImpl>
      get copyWith => __$$ApiRandomUserNameDataImplCopyWithImpl<
          _$ApiRandomUserNameDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiRandomUserNameDataImplToJson(
      this,
    );
  }
}

abstract class _ApiRandomUserNameData implements ApiRandomUserNameData {
  const factory _ApiRandomUserNameData(
      {@JsonKey(name: "title") final String? title,
      @JsonKey(name: "first") final String? first,
      @JsonKey(name: "last") final String? last}) = _$ApiRandomUserNameDataImpl;

  factory _ApiRandomUserNameData.fromJson(Map<String, dynamic> json) =
      _$ApiRandomUserNameDataImpl.fromJson;

  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "first")
  String? get first;
  @override
  @JsonKey(name: "last")
  String? get last;

  /// Create a copy of ApiRandomUserNameData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiRandomUserNameDataImplCopyWith<_$ApiRandomUserNameDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiRandomUserPictureData _$ApiRandomUserPictureDataFromJson(
    Map<String, dynamic> json) {
  return _ApiRandomUserPictureData.fromJson(json);
}

/// @nodoc
mixin _$ApiRandomUserPictureData {
  @JsonKey(name: "large")
  String? get large => throw _privateConstructorUsedError;
  @JsonKey(name: "medium")
  String? get medium => throw _privateConstructorUsedError;
  @JsonKey(name: "thumbnail")
  String? get thumbnail => throw _privateConstructorUsedError;

  /// Serializes this ApiRandomUserPictureData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiRandomUserPictureData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiRandomUserPictureDataCopyWith<ApiRandomUserPictureData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiRandomUserPictureDataCopyWith<$Res> {
  factory $ApiRandomUserPictureDataCopyWith(ApiRandomUserPictureData value,
          $Res Function(ApiRandomUserPictureData) then) =
      _$ApiRandomUserPictureDataCopyWithImpl<$Res, ApiRandomUserPictureData>;
  @useResult
  $Res call(
      {@JsonKey(name: "large") String? large,
      @JsonKey(name: "medium") String? medium,
      @JsonKey(name: "thumbnail") String? thumbnail});
}

/// @nodoc
class _$ApiRandomUserPictureDataCopyWithImpl<$Res,
        $Val extends ApiRandomUserPictureData>
    implements $ApiRandomUserPictureDataCopyWith<$Res> {
  _$ApiRandomUserPictureDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiRandomUserPictureData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? large = freezed,
    Object? medium = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_value.copyWith(
      large: freezed == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
      medium: freezed == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiRandomUserPictureDataImplCopyWith<$Res>
    implements $ApiRandomUserPictureDataCopyWith<$Res> {
  factory _$$ApiRandomUserPictureDataImplCopyWith(
          _$ApiRandomUserPictureDataImpl value,
          $Res Function(_$ApiRandomUserPictureDataImpl) then) =
      __$$ApiRandomUserPictureDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "large") String? large,
      @JsonKey(name: "medium") String? medium,
      @JsonKey(name: "thumbnail") String? thumbnail});
}

/// @nodoc
class __$$ApiRandomUserPictureDataImplCopyWithImpl<$Res>
    extends _$ApiRandomUserPictureDataCopyWithImpl<$Res,
        _$ApiRandomUserPictureDataImpl>
    implements _$$ApiRandomUserPictureDataImplCopyWith<$Res> {
  __$$ApiRandomUserPictureDataImplCopyWithImpl(
      _$ApiRandomUserPictureDataImpl _value,
      $Res Function(_$ApiRandomUserPictureDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiRandomUserPictureData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? large = freezed,
    Object? medium = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_$ApiRandomUserPictureDataImpl(
      large: freezed == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
      medium: freezed == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiRandomUserPictureDataImpl implements _ApiRandomUserPictureData {
  const _$ApiRandomUserPictureDataImpl(
      {@JsonKey(name: "large") this.large,
      @JsonKey(name: "medium") this.medium,
      @JsonKey(name: "thumbnail") this.thumbnail});

  factory _$ApiRandomUserPictureDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiRandomUserPictureDataImplFromJson(json);

  @override
  @JsonKey(name: "large")
  final String? large;
  @override
  @JsonKey(name: "medium")
  final String? medium;
  @override
  @JsonKey(name: "thumbnail")
  final String? thumbnail;

  @override
  String toString() {
    return 'ApiRandomUserPictureData(large: $large, medium: $medium, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiRandomUserPictureDataImpl &&
            (identical(other.large, large) || other.large == large) &&
            (identical(other.medium, medium) || other.medium == medium) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, large, medium, thumbnail);

  /// Create a copy of ApiRandomUserPictureData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiRandomUserPictureDataImplCopyWith<_$ApiRandomUserPictureDataImpl>
      get copyWith => __$$ApiRandomUserPictureDataImplCopyWithImpl<
          _$ApiRandomUserPictureDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiRandomUserPictureDataImplToJson(
      this,
    );
  }
}

abstract class _ApiRandomUserPictureData implements ApiRandomUserPictureData {
  const factory _ApiRandomUserPictureData(
          {@JsonKey(name: "large") final String? large,
          @JsonKey(name: "medium") final String? medium,
          @JsonKey(name: "thumbnail") final String? thumbnail}) =
      _$ApiRandomUserPictureDataImpl;

  factory _ApiRandomUserPictureData.fromJson(Map<String, dynamic> json) =
      _$ApiRandomUserPictureDataImpl.fromJson;

  @override
  @JsonKey(name: "large")
  String? get large;
  @override
  @JsonKey(name: "medium")
  String? get medium;
  @override
  @JsonKey(name: "thumbnail")
  String? get thumbnail;

  /// Create a copy of ApiRandomUserPictureData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiRandomUserPictureDataImplCopyWith<_$ApiRandomUserPictureDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
