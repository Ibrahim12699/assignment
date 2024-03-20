import 'package:assignment/src/app/app.dart';
import 'package:assignment/src/core/resource/constants.dart';
import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  const keyApplicationId = appId;
  const keyParseServerUrl = serverUrl;
  await Parse().initialize(keyApplicationId, keyParseServerUrl);

  runApp(MyApp());
}
