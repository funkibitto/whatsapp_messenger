// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$User {
  String get username => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  String get profileImageUrl => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;
  int get lastSeen => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  List<String> get groupId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String username,
      String uid,
      String profileImageUrl,
      bool active,
      int lastSeen,
      String phoneNumber,
      List<String> groupId});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? uid = null,
    Object? profileImageUrl = null,
    Object? active = null,
    Object? lastSeen = null,
    Object? phoneNumber = null,
    Object? groupId = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageUrl: null == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      lastSeen: null == lastSeen
          ? _value.lastSeen
          : lastSeen // ignore: cast_nullable_to_non_nullable
              as int,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String username,
      String uid,
      String profileImageUrl,
      bool active,
      int lastSeen,
      String phoneNumber,
      List<String> groupId});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? uid = null,
    Object? profileImageUrl = null,
    Object? active = null,
    Object? lastSeen = null,
    Object? phoneNumber = null,
    Object? groupId = null,
  }) {
    return _then(_$_User(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageUrl: null == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      lastSeen: null == lastSeen
          ? _value.lastSeen
          : lastSeen // ignore: cast_nullable_to_non_nullable
              as int,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      groupId: null == groupId
          ? _value._groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_User implements _User {
  const _$_User(
      {required this.username,
      required this.uid,
      required this.profileImageUrl,
      required this.active,
      required this.lastSeen,
      required this.phoneNumber,
      required final List<String> groupId})
      : _groupId = groupId;

  @override
  final String username;
  @override
  final String uid;
  @override
  final String profileImageUrl;
  @override
  final bool active;
  @override
  final int lastSeen;
  @override
  final String phoneNumber;
  final List<String> _groupId;
  @override
  List<String> get groupId {
    if (_groupId is EqualUnmodifiableListView) return _groupId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groupId);
  }

  @override
  String toString() {
    return 'User(username: $username, uid: $uid, profileImageUrl: $profileImageUrl, active: $active, lastSeen: $lastSeen, phoneNumber: $phoneNumber, groupId: $groupId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                other.profileImageUrl == profileImageUrl) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.lastSeen, lastSeen) ||
                other.lastSeen == lastSeen) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            const DeepCollectionEquality().equals(other._groupId, _groupId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      username,
      uid,
      profileImageUrl,
      active,
      lastSeen,
      phoneNumber,
      const DeepCollectionEquality().hash(_groupId));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);
}

abstract class _User implements User {
  const factory _User(
      {required final String username,
      required final String uid,
      required final String profileImageUrl,
      required final bool active,
      required final int lastSeen,
      required final String phoneNumber,
      required final List<String> groupId}) = _$_User;

  @override
  String get username;
  @override
  String get uid;
  @override
  String get profileImageUrl;
  @override
  bool get active;
  @override
  int get lastSeen;
  @override
  String get phoneNumber;
  @override
  List<String> get groupId;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
