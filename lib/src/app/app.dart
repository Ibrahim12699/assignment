import 'package:assignment/src/core/resource/route_manager.dart';
import 'package:assignment/src/core/resource/strings_manager.dart';
import 'package:assignment/src/core/resource/theme_manager.dart';

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable

class MyApp extends StatefulWidget {
  const MyApp._internal();

  static const MyApp _instance = MyApp._internal(); // single instance

  factory MyApp() => _instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  RouteGenerator routeGenerator = RouteGenerator();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _buildMaterialApp();
  }

  Widget _buildMaterialApp() {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      builder: (context, state) {
        return MaterialApp(
          title: StringsManager.appName,
          debugShowCheckedModeBanner: false,
          onGenerateRoute: routeGenerator.getRoute,
          theme: getApplicationTheme(),
          initialRoute: Routes.authScreenRoute,
        );
      },
    );
  }
}
