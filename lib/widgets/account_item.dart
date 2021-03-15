import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photo_home_test/util/app_colors.dart';
import 'package:photo_home_test/widgets/app_texts.dart';

class AccountItem extends StatelessWidget {
  final String image;
  final String fullName;
  final String userName;

  const AccountItem({Key key, this.image, this.fullName, this.userName}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipOval(
          child: Image.network(image, width: 28, height: 28, fit: BoxFit.cover,),
        ),
        SizedBox(width: 8,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            AppTexts.black13700Roboto(text: fullName,),
            AppTexts.black11400Roboto(text: userName, style: TextStyle(color: AppColors.black80),),
          ],
        )
      ],
    );
  }
}
