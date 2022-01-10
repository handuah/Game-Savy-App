import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:game_savy_app/browse_games.dart';
import 'package:game_savy_app/liked_games.dart';
import 'package:game_savy_app/messages.dart';
import 'package:game_savy_app/search_games.dart';
import 'package:game_savy_app/shop_games.dart';
import 'package:jumping_bottom_nav_bar/jumping_bottom_nav_bar.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:game_savy_app/constants.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        extendBody: true,
        // backgroundColor: bgColor,
        // appBar: appBar(),
        body: Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                bgColor,
                bgColorBottom,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: const [0.8, 0.9],
            ),
          ),
          child: const TabBarView(
            children: [
              BrowseGames(),
              SearchGames(),
              ShopGames(),
              LikedGames(),
              Messages(),
            ],
          ),
        ),
        bottomNavigationBar: bottomNav(),
      ),
    );
  }

  JumpingTabBar bottomNav() {
    int selectedIndex = 1;
    return JumpingTabBar(
      selectedIndex: selectedIndex,
      onChangeTab: (int index) {
        selectedIndex = index;
      },
      backgroundColor: bgColor,
      circleGradient: LinearGradient(
        colors: [violetColor, bgColorBottom],
        stops: const [0.5, 0.8],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
      items: [
        TabItemIcon(
          iconData: FontAwesome.gamepad,
          curveColor: Colors.cyan,
          startColor: Colors.white,
          endColor: Colors.white,
        ),
        TabItemIcon(
          iconData: Entypo.rocket,
          curveColor: Colors.amber,
          startColor: Colors.white,
          endColor: Colors.white,
        ),
        TabItemIcon(
          iconData: Feather.shopping_bag,
          curveColor: Colors.indigo[200],
          startColor: Colors.white,
          endColor: Colors.white,
        ),
        TabItemIcon(
          iconData: Feather.heart,
          curveColor: Colors.tealAccent,
          startColor: Colors.white,
          endColor: Colors.white,
        ),
        TabItemIcon(
          iconData: Octicons.comment_discussion,
          curveColor: Colors.yellowAccent,
          startColor: Colors.white,
          endColor: Colors.white,
        ),
      ],
    );
  }
}
