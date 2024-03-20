// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() addedUser,
    required TResult Function(List<User> users) usersLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? addedUser,
    TResult? Function(List<User> users)? usersLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? addedUser,
    TResult Function(List<User> users)? usersLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(AddedUser<T> value) addedUser,
    required TResult Function(UsersLoaded<T> value) usersLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(AddedUser<T> value)? addedUser,
    TResult? Function(UsersLoaded<T> value)? usersLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(AddedUser<T> value)? addedUser,
    TResult Function(UsersLoaded<T> value)? usersLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<T, $Res> {
  factory $HomeStateCopyWith(
          HomeState<T> value, $Res Function(HomeState<T>) then) =
      _$HomeStateCopyWithImpl<T, $Res, HomeState<T>>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<T, $Res, $Val extends HomeState<T>>
    implements $HomeStateCopyWith<T, $Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$IdleImplCopyWith<T, $Res> {
  factory _$$IdleImplCopyWith(
          _$IdleImpl<T> value, $Res Function(_$IdleImpl<T>) then) =
      __$$IdleImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$IdleImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$IdleImpl<T>>
    implements _$$IdleImplCopyWith<T, $Res> {
  __$$IdleImplCopyWithImpl(
      _$IdleImpl<T> _value, $Res Function(_$IdleImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IdleImpl<T> implements Idle<T> {
  const _$IdleImpl();

  @override
  String toString() {
    return 'HomeState<$T>.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IdleImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() addedUser,
    required TResult Function(List<User> users) usersLoaded,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? addedUser,
    TResult? Function(List<User> users)? usersLoaded,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? addedUser,
    TResult Function(List<User> users)? usersLoaded,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(AddedUser<T> value) addedUser,
    required TResult Function(UsersLoaded<T> value) usersLoaded,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(AddedUser<T> value)? addedUser,
    TResult? Function(UsersLoaded<T> value)? usersLoaded,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(AddedUser<T> value)? addedUser,
    TResult Function(UsersLoaded<T> value)? usersLoaded,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class Idle<T> implements HomeState<T> {
  const factory Idle() = _$IdleImpl<T>;
}

/// @nodoc
abstract class _$$AddedUserImplCopyWith<T, $Res> {
  factory _$$AddedUserImplCopyWith(
          _$AddedUserImpl<T> value, $Res Function(_$AddedUserImpl<T>) then) =
      __$$AddedUserImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$AddedUserImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$AddedUserImpl<T>>
    implements _$$AddedUserImplCopyWith<T, $Res> {
  __$$AddedUserImplCopyWithImpl(
      _$AddedUserImpl<T> _value, $Res Function(_$AddedUserImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddedUserImpl<T> implements AddedUser<T> {
  const _$AddedUserImpl();

  @override
  String toString() {
    return 'HomeState<$T>.addedUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddedUserImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() addedUser,
    required TResult Function(List<User> users) usersLoaded,
  }) {
    return addedUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? addedUser,
    TResult? Function(List<User> users)? usersLoaded,
  }) {
    return addedUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? addedUser,
    TResult Function(List<User> users)? usersLoaded,
    required TResult orElse(),
  }) {
    if (addedUser != null) {
      return addedUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(AddedUser<T> value) addedUser,
    required TResult Function(UsersLoaded<T> value) usersLoaded,
  }) {
    return addedUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(AddedUser<T> value)? addedUser,
    TResult? Function(UsersLoaded<T> value)? usersLoaded,
  }) {
    return addedUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(AddedUser<T> value)? addedUser,
    TResult Function(UsersLoaded<T> value)? usersLoaded,
    required TResult orElse(),
  }) {
    if (addedUser != null) {
      return addedUser(this);
    }
    return orElse();
  }
}

abstract class AddedUser<T> implements HomeState<T> {
  const factory AddedUser() = _$AddedUserImpl<T>;
}

/// @nodoc
abstract class _$$UsersLoadedImplCopyWith<T, $Res> {
  factory _$$UsersLoadedImplCopyWith(_$UsersLoadedImpl<T> value,
          $Res Function(_$UsersLoadedImpl<T>) then) =
      __$$UsersLoadedImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({List<User> users});
}

/// @nodoc
class __$$UsersLoadedImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$UsersLoadedImpl<T>>
    implements _$$UsersLoadedImplCopyWith<T, $Res> {
  __$$UsersLoadedImplCopyWithImpl(
      _$UsersLoadedImpl<T> _value, $Res Function(_$UsersLoadedImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_$UsersLoadedImpl<T>(
      null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc

class _$UsersLoadedImpl<T> implements UsersLoaded<T> {
  const _$UsersLoadedImpl(final List<User> users) : _users = users;

  final List<User> _users;
  @override
  List<User> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'HomeState<$T>.usersLoaded(users: $users)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersLoadedImpl<T> &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsersLoadedImplCopyWith<T, _$UsersLoadedImpl<T>> get copyWith =>
      __$$UsersLoadedImplCopyWithImpl<T, _$UsersLoadedImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() addedUser,
    required TResult Function(List<User> users) usersLoaded,
  }) {
    return usersLoaded(users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? addedUser,
    TResult? Function(List<User> users)? usersLoaded,
  }) {
    return usersLoaded?.call(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? addedUser,
    TResult Function(List<User> users)? usersLoaded,
    required TResult orElse(),
  }) {
    if (usersLoaded != null) {
      return usersLoaded(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(AddedUser<T> value) addedUser,
    required TResult Function(UsersLoaded<T> value) usersLoaded,
  }) {
    return usersLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(AddedUser<T> value)? addedUser,
    TResult? Function(UsersLoaded<T> value)? usersLoaded,
  }) {
    return usersLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(AddedUser<T> value)? addedUser,
    TResult Function(UsersLoaded<T> value)? usersLoaded,
    required TResult orElse(),
  }) {
    if (usersLoaded != null) {
      return usersLoaded(this);
    }
    return orElse();
  }
}

abstract class UsersLoaded<T> implements HomeState<T> {
  const factory UsersLoaded(final List<User> users) = _$UsersLoadedImpl<T>;

  List<User> get users;
  @JsonKey(ignore: true)
  _$$UsersLoadedImplCopyWith<T, _$UsersLoadedImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
