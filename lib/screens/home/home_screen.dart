import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:photo_home_test/screens/home/home_tab.dart';
import 'package:photo_home_test/util/app_colors.dart';
import 'package:photo_home_test/util/app_images.dart';
import 'package:photo_home_test/widgets/app_texts.dart';
import 'package:photo_home_test/widgets/bottom_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  Widget _getTab() {
    switch(_selectedIndex) {
      case 0:
        return HomeTab();
      default:
        return Container(
          child: Center(
            child: AppTexts.black36400Comfortaa(text: _selectedIndex.toString(),),
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: _getTab(),
            ),
            AppBottomNavigationBar(
              items: [
                SvgPicture.asset(AppImages.iconHome),
                SvgPicture.asset(AppImages.iconSearch),
                Container(
                  height: 40,
                  width: 70,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [AppColors.pinkHotMagenta, AppColors.darkOrange]),
                      borderRadius: BorderRadius.circular(20)),
                  child: SvgPicture.asset(AppImages.iconPlus, fit: BoxFit.scaleDown,),
                ),
                SvgPicture.asset(AppImages.iconMessage),
                SvgPicture.asset(AppImages.iconPerson),
              ],
              onPressItemAt: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
