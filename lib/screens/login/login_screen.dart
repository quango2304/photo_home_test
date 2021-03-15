import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:photo_home_test/screens/home/home_screen.dart';
import 'package:photo_home_test/util/app_images.dart';
import 'package:photo_home_test/widgets/app_texts.dart';
import 'package:photo_home_test/widgets/outline_textfield.dart';
import 'package:photo_home_test/widgets/solid_button.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 32,),
              GestureDetector(onTap: () {
                Navigator.of(context).pop();
              },child: SvgPicture.asset(AppImages.iconBack, width: 11, height: 11,)),
              Expanded(child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 32,),
                    AppTexts.black36400Comfortaa(text: 'Log in',),
                    SizedBox(height: 32,),
                    AppOutlineTextField(hint: "Username",),
                    SizedBox(height: 16,),
                    AppOutlineTextField(hint: "Password", isSecure: true,),
                    SizedBox(height: 16,),
                    AppSolidButton(text: 'LOG IN', onTap: () {
                      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                          HomeScreen()), (Route<dynamic> route) => false);
                    },)
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
