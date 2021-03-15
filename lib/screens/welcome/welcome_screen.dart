import 'package:flutter/material.dart';
import 'package:photo_home_test/screens/login/login_screen.dart';
import 'package:photo_home_test/screens/sign_up/sign_up_screen.dart';
import 'package:photo_home_test/util/app_colors.dart';
import 'package:photo_home_test/util/app_images.dart';
import 'package:photo_home_test/widgets/account_item.dart';
import 'package:photo_home_test/widgets/outline_button.dart';
import 'package:photo_home_test/widgets/solid_button.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      'https://images.unsplash.com/photo-1557672172-298e090bd0f1?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8YWJzdHJhY3R8ZW58MHx8MHw%3D&w=1000&q=80'
                    ),
                    fit: BoxFit.cover)),
            child: Stack(
              fit: StackFit.expand,
              alignment: Alignment.center,
              children: [
                Image.asset(
                  AppImages.appLogo,
                  height: 54,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16, bottom: 20),
                    child: AccountItem(
                      image:
                          'https://specials-images.forbesimg.com/imageserve/1144022172/960x0.jpg?fit=scale',
                      fullName: 'Pawel Czerwinski',
                      userName: '@pawel_czerwinski',
                    ),
                  ),
                )
              ],
            ),
          )),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            color: AppColors.white,
            child: Row(
              children: [
                Expanded(
                    child: AppOutLineButton(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                      return LoginScreen();
                    }));
                  },
                  text: 'LOG IN',
                )),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                    child: AppSolidButton(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                      return SignUpScreen();
                    }));
                  },
                  text: 'REGISTER',
                )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
