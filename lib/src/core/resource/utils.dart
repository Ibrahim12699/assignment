import 'package:assignment/src/features/home/presentation/widgets/add_user_view.dart';
import 'package:flutter/material.dart';

checkValidation(value) {
  if (value == null || value.isEmpty) {
    return 'Please enter a valid data';
  }
}

int idGenerator() {
  final now = DateTime.now();
  return now.microsecondsSinceEpoch;
}

void appModalBottomSheet(BuildContext context) {
  showModalBottomSheet(
    isScrollControlled: true,
    showDragHandle: true,
    useRootNavigator: true,
    context: context,
    builder: (context) {
      return const AddUserView();
    },
  );
}
