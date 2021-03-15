import 'package:flutter/material.dart';
import 'package:photo_home_test/util/app_colors.dart';
import 'package:photo_home_test/widgets/app_texts.dart';

class AppSolidButton extends StatelessWidget {
  final String text;
  final Function onTap;

  const AppSolidButton({Key key, this.text, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.black,
            borderRadius: BorderRadius.circular(6),
        ),
        width: double.maxFinite,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 20),
        child: AppTexts.white13900Roboto(text: text,),
      ),
    );
  }
}
