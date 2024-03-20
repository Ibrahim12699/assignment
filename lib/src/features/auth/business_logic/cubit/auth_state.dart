import 'package:assignment/src/features/auth/data/model/auth_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState<T> with _$AuthState<T> {
  const factory AuthState.idle() = Idle<T>;

  const factory AuthState.loginLoading() = LoginLoading<T>;

  const factory AuthState.loginSuccess(AuthModel model) = LoginSuccess<T>;

  const factory AuthState.loginError(String error) = LoginError<T>;

  const factory AuthState.registerLoading() = RegisterLoading<T>;

  const factory AuthState.registerSuccess(AuthModel model) = RegisterSuccess<T>;

  const factory AuthState.registerError(String error) = RegisterError<T>;
}
