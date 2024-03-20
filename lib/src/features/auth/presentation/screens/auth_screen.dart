import 'package:assignment/src/core/resource/assets_manager.dart';
import 'package:assignment/src/core/resource/color_manager.dart';
import 'package:assignment/src/core/resource/constants.dart';
import 'package:assignment/src/core/resource/route_manager.dart';
import 'package:assignment/src/core/resource/strings_manager.dart';
import 'package:assignment/src/core/resource/validators.dart';
import 'package:assignment/src/features/auth/business_logic/cubit/auth_cubit.dart';
import 'package:assignment/src/features/auth/business_logic/cubit/auth_state.dart';
import 'package:assignment/src/features/auth/presentation/widgets/auth_error_widget.dart';
import 'package:assignment/src/features/auth/presentation/widgets/custom_text_field_widget.dart';
import 'package:assignment/src/features/auth/presentation/widgets/auth_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  AuthScreenState createState() => AuthScreenState();
}

class AuthScreenState extends State<AuthScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  String errorText = StringsManager.defaultError;
  bool _showError = false;
  bool loading = false;

  @override
  void initState() {
    // emailController.text = 'test@gmail.com';
    // usernameController.text = 'test';
    // passwordController.text = '123456';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBloc(),
    );
  }

  Widget _buildBloc() {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        state.mapOrNull(
          loginLoading: _onLoginLoading,
          loginSuccess: _onLoginSuccess,
          loginError: _onLoginError,
          registerLoading: _onRegisterLoading,
          registerSuccess: _onRegisterSuccess,
          registerError: _onRegisterError,
        );
      },
      builder: (context, state) {
        return _buildBody();
      },
    );
  }

  Widget _buildBody() {
    return Stack(
      children: [
        _buildImageBackground(),
        _buildBlur(),
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Expanded(child: SizedBox()),
            _buildInputFields(),
            _buildButtons(),
          ],
        ),
      ],
    );
  }

  Widget _buildEmailField() {
    return CustomTextField(
      hintText: StringsManager.email,
      controller: emailController,
      validator: Validators.validateEmail,
    );
  }

  Widget _buildUserNameField() {
    return CustomTextField(
      hintText: StringsManager.username,
      controller: usernameController,
      validator: Validators.validateUsername,
    );
  }

  Widget _buildPasswordField() {
    return CustomTextField(
      hintText: StringsManager.password,
      controller: passwordController,
      obscureText: true,
      validator: Validators.validatePassword,
    );
  }

  Widget _buildImageBackground() {
    return SizedBox(
      height: 1.sh,
      width: 1.sw,
      child: SvgPicture.asset(
        AssetsManager.authBackground,
        fit: BoxFit.fitWidth,
      ),
    );
  }

  Widget _buildBlur() {
    return Positioned(
      child: Container(
        color: ColorManager.black.withOpacity(.03),
      ),
    );
  }

  Widget _buildInputFields() {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 37.w),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AuthErrorWidget(
                visible: _showError,
                onCloseTap: _onCloseErrorTap,
                errorText: errorText,
              ),
              _buildEmailField(),
              10.verticalSpace,
              _buildUserNameField(),
              10.verticalSpace,
              _buildPasswordField(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButtons() {
    return Expanded(
      child: Column(
        children: [
          AuthButtonWidget(
            label: StringsManager.login,
            loading: loading,
            onPressed: _onLoginButtonPressed,
          ),
          10.verticalSpace,
          AuthButtonWidget(
            label: StringsManager.register,
            loading: loading,
            onPressed: _onRegisterButtonPressed,
          ),
        ],
      ),
    );
  }

  void _onLoginButtonPressed() {
    _showError = false;
    if (_formKey.currentState!.validate()) {
      RouteGenerator.authCubit.login(
        username: usernameController.text,
        email: emailController.text,
        password: passwordController.text,
      );
    }
  }

  void _onLoginLoading(LoginLoading value) {
    loading = true;
  }

  void _onLoginSuccess(LoginSuccess state) {
    loading = false;
    Navigator.pushNamedAndRemoveUntil(
      context,
      Routes.homeRoute,
      arguments: state.model,
      (route) => false,
    );
    _clearFields();
    showBottomMessage(
      text: StringsManager.welcome,
      context: context,
      color: ColorManager.green,
    );
  }

  void _onLoginError(LoginError state) {
    loading = false;
    errorText = state.error;
    _showError = true;
  }

  void _onRegisterButtonPressed() {
    _showError = false;
    if (_formKey.currentState!.validate()) {
      RouteGenerator.authCubit.register(
        username: usernameController.text,
        email: emailController.text,
        password: passwordController.text,
      );
    }
  }

  void _onRegisterLoading(RegisterLoading state) {
    loading = true;
  }

  void _onRegisterSuccess(RegisterSuccess state) {
    loading = false;
    Navigator.pushNamedAndRemoveUntil(
      context,
      Routes.homeRoute,
      arguments: state.model,
      (route) => false,
    );
    _clearFields();
    showBottomMessage(
      text: StringsManager.welcome,
      context: context,
      color: ColorManager.green,
    );
  }

  void _onRegisterError(RegisterError state) {
    loading = false;
    errorText = state.error;
    _showError = true;
  }

  void _onCloseErrorTap() {
    setState(() => _showError = false);
  }

  void _clearFields() {
    emailController.clear();
    usernameController.clear();
    passwordController.clear();
  }

  @override
  void dispose() {
    emailController.dispose();
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
