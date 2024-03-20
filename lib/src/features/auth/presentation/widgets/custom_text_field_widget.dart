import 'package:assignment/src/core/resource/color_manager.dart';
import 'package:assignment/src/core/resource/style_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    this.hintText,
    this.controller,
    this.validator,
    this.obscureText,
    this.keyboardType,
    this.inputFormatter,
  });

  final String? hintText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool? obscureText;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatter;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return _buildCustomTextField();
  }

  Widget _buildCustomTextField() {
    return TextFormField(
      keyboardType: widget.keyboardType,
      controller: widget.controller,
      inputFormatters: widget.inputFormatter,
      obscureText: widget.obscureText ?? false,
      validator: widget.validator,
      textAlign: TextAlign.center,
      onTapOutside: (value) {
        FocusScope.of(context).unfocus();
      },
      style: _textStyle(),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          vertical: 16.h,
        ),
        hintText: widget.hintText,
        hintStyle: _textStyle(),
        border: _buildInputBorder(),
        enabledBorder: _buildInputBorder(),
        focusedBorder: _buildInputBorder(color: Colors.blue),
        filled: true,
        fillColor: Colors.white,
      ),
    );
  }

  InputBorder _buildInputBorder({Color? color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: color ?? Colors.transparent,
      ),
    );
  }

  TextStyle _textStyle() {
    return getRegularStyle(
      fontSize: 20.spMin,
      color: ColorManager.black,
    );
  }
}
