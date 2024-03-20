import 'package:assignment/src/core/resource/utils.dart';
import 'package:assignment/src/db/users_database.dart';
import 'package:assignment/src/features/auth/data/model/user.dart';
import 'package:assignment/src/features/home/business_logic/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const Idle());
  List<User> users = [];

  Future<void> addUser(userName, String? walletAmount) async {
    final user = User(
        id: idGenerator(),
        userName: userName,
        walletAmount: walletAmount ?? '0.0');
    await UsersDatabase.instance.create(user);
    emit(const HomeState.addedUser());
  }

  Future<void> refreshUsers() async {
    users = await UsersDatabase.instance.getAllUsers();
    emit(HomeState.usersLoaded(users));
  }
}
