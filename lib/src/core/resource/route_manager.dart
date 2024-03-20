import 'package:assignment/src/core/resource/strings_manager.dart';
import 'package:assignment/src/features/auth/business_logic/cubit/auth_cubit.dart';
import 'package:assignment/src/features/auth/presentation/screens/auth_screen.dart';
import 'package:assignment/src/features/home/business_logic/cubit/home_cubit.dart';
import 'package:assignment/src/features/home/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Routes {
  static const String authScreenRoute = '/authScreenRoute';
  static const String homeRoute = '/homeRoute';
}

class RouteGenerator {
  static late AuthCubit authCubit;
  static late HomeCubit homeCubit;

  RouteGenerator() {
    authCubit = AuthCubit();
    homeCubit = HomeCubit();
  }

  Route? getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.authScreenRoute:
        return MaterialPageRoute(
          builder: (_) =>
              BlocProvider.value(value: authCubit, child: const AuthScreen()),
        );
      case Routes.homeRoute:
        final currentUser = settings.arguments;
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: homeCubit,
                  child: HomeView(currentUser: currentUser),
                ));
      default:
        return unDefinedRoute();
    }
  }
}

Route unDefinedRoute() {
  return MaterialPageRoute(
    builder: (_) => Scaffold(
      appBar: AppBar(
        title: const Text(StringsManager.noRouteFound),
      ),
      body: const Center(child: Text(StringsManager.noRouteFound)),
    ),
  );
}
