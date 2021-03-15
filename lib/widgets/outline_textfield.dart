import 'package:flutter/material.dart';
import 'package:photo_home_test/util/app_colors.dart';

class AppOutlineTextField extends StatelessWidget {
  final TextEditingController controller;
  final bool isSecure;
  final String hint;
  final TextInputType inputType;

  const AppOutlineTextField({Key key, this.controller, this.isSecure = false, this.hint, this.inputType}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: inputType,
      obscureText: isSecure,
      textAlign: TextAlign.start,
      textAlignVertical: TextAlignVertical.top,
      style: TextStyle(color: AppColors.black, fontSize: 15, fontWeight: FontWeight.w400),
      decoration: InputDecoration(
          hintText: hint ?? '',
          hintStyle: TextStyle(color: AppColors.black80, fontSize: 15, fontWeight: FontWeight.w400),
          contentPadding: const EdgeInsets.all(17),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.black, width: 2),
            borderRadius: const BorderRadius.all(
              const Radius.circular(0),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.black, width: 2),
            borderRadius: const BorderRadius.all(
              const Radius.circular(0),
            ),
          ),
      ),
    );
  }
}
