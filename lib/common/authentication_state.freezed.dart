// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthenticationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() authenticated,
    required TResult Function(NotAuthenticated data) signedOut,
    required TResult Function() waiting,
    required TResult Function(NotAuthenticated data) unAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? authenticated,
    TResult? Function(NotAuthenticated data)? signedOut,
    TResult? Function()? waiting,
    TResult? Function(NotAuthenticated data)? unAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? authenticated,
    TResult Function(NotAuthenticated data)? signedOut,
    TResult Function()? waiting,
    TResult Function(NotAuthenticated data)? unAuthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Waiting value) waiting,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_SignedOut value)? signedOut,
    TResult? Function(_Waiting value)? waiting,
    TResult? Function(_UnAuthenticated value)? unAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Waiting value)? waiting,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res, AuthenticationState>;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res, $Val extends AuthenticationState>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitCopyWith<$Res> {
  factory _$$_InitCopyWith(_$_Init value, $Res Function(_$_Init) then) =
      __$$_InitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$_Init>
    implements _$$_InitCopyWith<$Res> {
  __$$_InitCopyWithImpl(_$_Init _value, $Res Function(_$_Init) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Init implements _Init {
  const _$_Init();

  @override
  String toString() {
    return 'AuthenticationState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Init);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() authenticated,
    required TResult Function(NotAuthenticated data) signedOut,
    required TResult Function() waiting,
    required TResult Function(NotAuthenticated data) unAuthenticated,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? authenticated,
    TResult? Function(NotAuthenticated data)? signedOut,
    TResult? Function()? waiting,
    TResult? Function(NotAuthenticated data)? unAuthenticated,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? authenticated,
    TResult Function(NotAuthenticated data)? signedOut,
    TResult Function()? waiting,
    TResult Function(NotAuthenticated data)? unAuthenticated,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Waiting value) waiting,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_SignedOut value)? signedOut,
    TResult? Function(_Waiting value)? waiting,
    TResult? Function(_UnAuthenticated value)? unAuthenticated,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Waiting value)? waiting,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements AuthenticationState {
  const factory _Init() = _$_Init;
}

/// @nodoc
abstract class _$$_AuthenticatedCopyWith<$Res> {
  factory _$$_AuthenticatedCopyWith(
          _$_Authenticated value, $Res Function(_$_Authenticated) then) =
      __$$_AuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthenticatedCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$_Authenticated>
    implements _$$_AuthenticatedCopyWith<$Res> {
  __$$_AuthenticatedCopyWithImpl(
      _$_Authenticated _value, $Res Function(_$_Authenticated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Authenticated implements _Authenticated {
  const _$_Authenticated();

  @override
  String toString() {
    return 'AuthenticationState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Authenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() authenticated,
    required TResult Function(NotAuthenticated data) signedOut,
    required TResult Function() waiting,
    required TResult Function(NotAuthenticated data) unAuthenticated,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? authenticated,
    TResult? Function(NotAuthenticated data)? signedOut,
    TResult? Function()? waiting,
    TResult? Function(NotAuthenticated data)? unAuthenticated,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? authenticated,
    TResult Function(NotAuthenticated data)? signedOut,
    TResult Function()? waiting,
    TResult Function(NotAuthenticated data)? unAuthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Waiting value) waiting,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_SignedOut value)? signedOut,
    TResult? Function(_Waiting value)? waiting,
    TResult? Function(_UnAuthenticated value)? unAuthenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Waiting value)? waiting,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements AuthenticationState {
  const factory _Authenticated() = _$_Authenticated;
}

/// @nodoc
abstract class _$$_SignedOutCopyWith<$Res> {
  factory _$$_SignedOutCopyWith(
          _$_SignedOut value, $Res Function(_$_SignedOut) then) =
      __$$_SignedOutCopyWithImpl<$Res>;
  @useResult
  $Res call({NotAuthenticated data});
}

/// @nodoc
class __$$_SignedOutCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$_SignedOut>
    implements _$$_SignedOutCopyWith<$Res> {
  __$$_SignedOutCopyWithImpl(
      _$_SignedOut _value, $Res Function(_$_SignedOut) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_SignedOut(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as NotAuthenticated,
    ));
  }
}

/// @nodoc

class _$_SignedOut implements _SignedOut {
  const _$_SignedOut(this.data);

  @override
  final NotAuthenticated data;

  @override
  String toString() {
    return 'AuthenticationState.signedOut(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignedOut &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignedOutCopyWith<_$_SignedOut> get copyWith =>
      __$$_SignedOutCopyWithImpl<_$_SignedOut>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() authenticated,
    required TResult Function(NotAuthenticated data) signedOut,
    required TResult Function() waiting,
    required TResult Function(NotAuthenticated data) unAuthenticated,
  }) {
    return signedOut(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? authenticated,
    TResult? Function(NotAuthenticated data)? signedOut,
    TResult? Function()? waiting,
    TResult? Function(NotAuthenticated data)? unAuthenticated,
  }) {
    return signedOut?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? authenticated,
    TResult Function(NotAuthenticated data)? signedOut,
    TResult Function()? waiting,
    TResult Function(NotAuthenticated data)? unAuthenticated,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Waiting value) waiting,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
  }) {
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_SignedOut value)? signedOut,
    TResult? Function(_Waiting value)? waiting,
    TResult? Function(_UnAuthenticated value)? unAuthenticated,
  }) {
    return signedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Waiting value)? waiting,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut(this);
    }
    return orElse();
  }
}

abstract class _SignedOut implements AuthenticationState {
  const factory _SignedOut(final NotAuthenticated data) = _$_SignedOut;

  NotAuthenticated get data;
  @JsonKey(ignore: true)
  _$$_SignedOutCopyWith<_$_SignedOut> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WaitingCopyWith<$Res> {
  factory _$$_WaitingCopyWith(
          _$_Waiting value, $Res Function(_$_Waiting) then) =
      __$$_WaitingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WaitingCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$_Waiting>
    implements _$$_WaitingCopyWith<$Res> {
  __$$_WaitingCopyWithImpl(_$_Waiting _value, $Res Function(_$_Waiting) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Waiting implements _Waiting {
  const _$_Waiting();

  @override
  String toString() {
    return 'AuthenticationState.waiting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Waiting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() authenticated,
    required TResult Function(NotAuthenticated data) signedOut,
    required TResult Function() waiting,
    required TResult Function(NotAuthenticated data) unAuthenticated,
  }) {
    return waiting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? authenticated,
    TResult? Function(NotAuthenticated data)? signedOut,
    TResult? Function()? waiting,
    TResult? Function(NotAuthenticated data)? unAuthenticated,
  }) {
    return waiting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? authenticated,
    TResult Function(NotAuthenticated data)? signedOut,
    TResult Function()? waiting,
    TResult Function(NotAuthenticated data)? unAuthenticated,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Waiting value) waiting,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
  }) {
    return waiting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_SignedOut value)? signedOut,
    TResult? Function(_Waiting value)? waiting,
    TResult? Function(_UnAuthenticated value)? unAuthenticated,
  }) {
    return waiting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Waiting value)? waiting,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting(this);
    }
    return orElse();
  }
}

abstract class _Waiting implements AuthenticationState {
  const factory _Waiting() = _$_Waiting;
}

/// @nodoc
abstract class _$$_UnAuthenticatedCopyWith<$Res> {
  factory _$$_UnAuthenticatedCopyWith(
          _$_UnAuthenticated value, $Res Function(_$_UnAuthenticated) then) =
      __$$_UnAuthenticatedCopyWithImpl<$Res>;
  @useResult
  $Res call({NotAuthenticated data});
}

/// @nodoc
class __$$_UnAuthenticatedCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$_UnAuthenticated>
    implements _$$_UnAuthenticatedCopyWith<$Res> {
  __$$_UnAuthenticatedCopyWithImpl(
      _$_UnAuthenticated _value, $Res Function(_$_UnAuthenticated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_UnAuthenticated(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as NotAuthenticated,
    ));
  }
}

/// @nodoc

class _$_UnAuthenticated implements _UnAuthenticated {
  const _$_UnAuthenticated(this.data);

  @override
  final NotAuthenticated data;

  @override
  String toString() {
    return 'AuthenticationState.unAuthenticated(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnAuthenticated &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnAuthenticatedCopyWith<_$_UnAuthenticated> get copyWith =>
      __$$_UnAuthenticatedCopyWithImpl<_$_UnAuthenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() authenticated,
    required TResult Function(NotAuthenticated data) signedOut,
    required TResult Function() waiting,
    required TResult Function(NotAuthenticated data) unAuthenticated,
  }) {
    return unAuthenticated(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? authenticated,
    TResult? Function(NotAuthenticated data)? signedOut,
    TResult? Function()? waiting,
    TResult? Function(NotAuthenticated data)? unAuthenticated,
  }) {
    return unAuthenticated?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? authenticated,
    TResult Function(NotAuthenticated data)? signedOut,
    TResult Function()? waiting,
    TResult Function(NotAuthenticated data)? unAuthenticated,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Waiting value) waiting,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
  }) {
    return unAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_SignedOut value)? signedOut,
    TResult? Function(_Waiting value)? waiting,
    TResult? Function(_UnAuthenticated value)? unAuthenticated,
  }) {
    return unAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Waiting value)? waiting,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated(this);
    }
    return orElse();
  }
}

abstract class _UnAuthenticated implements AuthenticationState {
  const factory _UnAuthenticated(final NotAuthenticated data) =
      _$_UnAuthenticated;

  NotAuthenticated get data;
  @JsonKey(ignore: true)
  _$$_UnAuthenticatedCopyWith<_$_UnAuthenticated> get copyWith =>
      throw _privateConstructorUsedError;
}
