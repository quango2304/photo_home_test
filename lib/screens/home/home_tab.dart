import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:photo_home_test/widgets/account_item.dart';
import 'package:photo_home_test/widgets/app_texts.dart';
import 'package:photo_home_test/widgets/outline_button.dart';

class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  Widget _buildNewToday() {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Image.network(
              'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8aHVtYW58ZW58MHx8MHw%3D&ixlib=rb-1.2.1&w=1000&q=80',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          AccountItem(
            image:
                'https://specials-images.forbesimg.com/imageserve/1144022172/960x0.jpg?fit=scale',
            fullName: 'Pawel Czerwinski',
            userName: '@pawel_czerwinski',
          )
        ],
      ),
    );
  }

  List<Widget> _buildStaggerImages() {
    return [
      SliverToBoxAdapter(
        child: AppTexts.black13900Roboto(
          text: 'BROWSE ALL',
        ),
      ),
      SliverToBoxAdapter(
        child: SizedBox(
          height: 24,
        ),
      ),
      SliverStaggeredGrid.countBuilder(
        crossAxisCount: 2,
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) {
          if (index % 2 == 0) {
            return Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOd256TcC6vcaQ99TYzoP0pBbch9_Q-bbrmw&usqp=CAU');
          }
          return Image.network(
              'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8aHVtYW58ZW58MHx8MHw%3D&ixlib=rb-1.2.1&w=1000&q=80');
        },
        staggeredTileBuilder: (int index) => new StaggeredTile.fit(1),
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 9.0,
      ),
      SliverPadding(
        padding: EdgeInsets.symmetric(vertical: 32),
        sliver: SliverToBoxAdapter(
          child: AppOutLineButton(
            text: "SEE MORE",
          ),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      width: double.maxFinite,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 32,
                ),
                AppTexts.black36400Comfortaa(
                  text: 'Discover',
                ),
              ],
            ),
          ),
          SliverPadding(
              padding: EdgeInsets.only(top: 32, bottom: 48),
              sliver: _buildNewToday()),
          ..._buildStaggerImages(),
        ],
      ),
    );
  }
}
