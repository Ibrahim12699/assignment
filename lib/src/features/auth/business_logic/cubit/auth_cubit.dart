import 'dart:developer';

import 'package:assignment/src/core/resource/route_manager.dart';
import 'package:assignment/src/features/auth/business_logic/cubit/auth_state.dart';
import 'package:assignment/src/features/auth/data/model/auth_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(const Idle());

  void login({
    required String username,
    required String email,
    required String password,
  }) async {
    emit(const AuthState.loginLoading());

    try {
      final user = ParseUser(username, password, email);
      var response = await user.login();

      if (response.success) {
        final currentUser = AuthModel.fromJson(response.result);
        emit(AuthState.loginSuccess(currentUser));
      } else {
        emit(AuthState.loginError(response.error!.message));
      }
    } catch (e) {
      log(e.toString());
      emit(AuthState.loginError(e.toString()));
    }
  }

  void register({
    required String username,
    required String email,
    required String password,
  }) async {
    emit(const AuthState.registerLoading());

    final user = ParseUser(username, password, email);
    var response = await user.signUp();

    if (response.success) {
      final currentUser = AuthModel.fromJson(response.result);

      await RouteGenerator.homeCubit.addUser(username, '320');
      emit(AuthState.registerSuccess(currentUser));
    } else {
      emit(AuthState.registerError(response.error!.message));
    }
  }
}
