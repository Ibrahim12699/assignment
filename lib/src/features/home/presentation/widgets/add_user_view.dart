import 'package:assignment/src/core/resource/route_manager.dart';
import 'package:assignment/src/core/resource/strings_manager.dart';
import 'package:assignment/src/core/resource/validators.dart';
import 'package:assignment/src/features/auth/presentation/widgets/auth_button_widget.dart';
import 'package:assignment/src/features/auth/presentation/widgets/custom_text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddUserView extends StatefulWidget {
  const AddUserView({super.key});

  @override
  State<AddUserView> createState() => _AddUserViewState();
}

class _AddUserViewState extends State<AddUserView> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController userNameController = TextEditingController();
  final TextEditingController amountController = TextEditingController();
  String errorText = StringsManager.defaultError;

  @override
  Widget build(BuildContext context) {
    return _buildAuthBody(context);
  }

  Widget _buildAuthBody(context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(
        left: 16.w,
        right: 16.w,
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: ListView(
        shrinkWrap: true,
        children: [
          _buildAuthForm(),
          42.verticalSpace,
          _buildAuthButton(context),
          16.verticalSpace,
        ],
      ),
    );
  }

  Widget _buildAuthButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24.w,
      ),
      child: AuthButtonWidget(
        width: 0.5.sw,
        label: StringsManager.addUser,
        onPressed: _onAddUserPressed,
        loading: false,
      ),
    );
  }

  Widget _buildAuthForm() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 37.w),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            10.verticalSpace,
            _buildEmailTextField(),
            10.verticalSpace,
            _buildAmountTextField(),
          ],
        ),
      ),
    );
  }

  Widget _buildEmailTextField() {
    return CustomTextField(
      controller: userNameController,
      hintText: StringsManager.username,
      validator: Validators.validateUsername,
    );
  }

  Widget _buildAmountTextField() {
    return CustomTextField(
      controller: amountController,
      hintText: StringsManager.amountOfMoney,
      validator: Validators.validateAmount,
      keyboardType: TextInputType.number,
      inputFormatter: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
    );
  }

  void _onAddUserPressed() {
    if (_formKey.currentState!.validate()) {
      RouteGenerator.homeCubit.addUser(
        userNameController.text,
        amountController.text,
      );
      Navigator.pop(context);
    }
  }

  @override
  dispose() {
    userNameController.dispose();
    amountController.dispose();
    super.dispose();
  }
}
