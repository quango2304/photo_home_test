import 'package:flutter/material.dart';
import 'package:photo_home_test/util/app_colors.dart';

class AppBottomNavigationBar extends StatelessWidget {
  final List<Widget> items;
  final Function(int index) onPressItemAt;
  const AppBottomNavigationBar({Key key, this.items, this.onPressItemAt}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: kBottomNavigationBarHeight,
      decoration: BoxDecoration(
        border: Border(top: BorderSide(width: 0.3, color: AppColors.black80)),
        color: AppColors.white
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          for(int i=0; i< items.length; i++)
            GestureDetector(
              onTap: () {
                onPressItemAt?.call(i);
              },
              child: items[i],
            )
        ],
      ),
    );
  }
}
