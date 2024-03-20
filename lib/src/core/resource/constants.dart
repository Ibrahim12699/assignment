import 'package:flutter/material.dart';

const appId = 'com.voyce';
const serverUrl = 'https://test.voycephone.com/parse/';

showBottomMessage({required var text, required context, Color? color}) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        text.toString(),
        textAlign: TextAlign.center,
      ),
      backgroundColor: color,
      duration: const Duration(seconds: 1),
      behavior: SnackBarBehavior.floating,
    ),
  );
}
