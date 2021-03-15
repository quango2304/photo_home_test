import 'package:flutter/material.dart';
import 'package:photo_home_test/util/app_colors.dart';
import 'package:photo_home_test/widgets/app_texts.dart';

class AppOutLineButton extends StatelessWidget {
  final String text;
  final Function onTap;

  const AppOutLineButton({Key key, this.text, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: AppColors.black, width: 2)
        ),
        width: double.maxFinite,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 18),
        child: AppTexts.black13900Roboto(text: text,),
      ),
    );
  }
}
