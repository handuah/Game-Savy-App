import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    return Scaffold(
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
        child: CustomScrollView(
          slivers: [
            appBar(),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  header(),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  SizedBox(
                    height: size.height * 0.4,
                    width: size.width,
                    child: ListView.separated(
                        padding: const EdgeInsets.symmetric(vertical: 0.0),
                        itemBuilder: (context, index) {
                          return gameCard(
                            jsonData[index]['name'],
                            jsonData[index]['game_type'],
                            jsonData[index]['img_url'],
                            jsonData[index]['rating'],
                            jsonData[index]['downloads'],
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const Divider();
                        },
                        itemCount: jsonData.length),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: bottomNav(),
    );
  }

  SliverAppBar appBar() {
    Size size = MediaQuery.of(context).size;
    return SliverAppBar(
      floating: true,
      backgroundColor: bgColor,
      elevation: 0.0,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.chevron_left),
        color: Colors.white,
        iconSize: 30.0,
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.radar,
              color: lightBgColor,
            ),
            SizedBox(width: size.width * 0.02),
            Text(
              '941',
              style: bodyText,
            ),
            SizedBox(width: size.width * 0.02),
          ],
        ),
      ],
    );
  }

  Padding header() {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Browse Games',
            style: bodyText.copyWith(
                fontSize: 30.0,
                letterSpacing: 1.4,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: size.height * 0.07,
            width: size.width * 0.8,
            // color: Colors.green,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                '''For modern multiplayer games to classics you can download for free.''',
                style: bodyText.copyWith(
                  fontWeight: FontWeight.normal,
                  fontSize: 16.0,
                  color: Colors.grey,
                ),
                overflow: TextOverflow.clip,
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          headerImage(),
          SizedBox(
            height: size.height * 0.04,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Top of the Year',
                style: bodyText.copyWith(
                    fontWeight: FontWeight.bold, fontSize: 22.0),
              ),
              SizedBox(
                width: size.width * 0.02,
              ),
              Image(
                height: size.height * 0.04,
                width: size.width * 0.04,
                image: const NetworkImage(
                  'http://assets.stickpng.com/images/58469c62cef1014c0b5e47f6.png',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Stack headerImage() {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: size.width,
          height: size.height * 0.2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            gradient: LinearGradient(
              colors: [violetColor, bgColorBottom],
              stops: const [0.5, 0.8],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: size.height * 0.2,
              width: size.width / 2,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    'https://www.pngall.com/wp-content/uploads/5/Overwatch-PNG-High-Quality-Image.png',
                  ),
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(
              width: size.width * 0.04,
            ),
            Column(
              children: [
                Text(
                  'Overwatch \n Tournament',
                  style: bodyText.copyWith(
                      fontWeight: FontWeight.bold, fontSize: 20.0),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  width: size.width * 0.3,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Join',
                      style: bodyText.copyWith(fontSize: 16.0),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.04),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Padding gameCard(String gameName, String gameType, String imageUrl,
      double ratings, int downloads) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: size.height * 0.1,
            width: size.width * 0.2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.blueAccent,
              image: DecorationImage(
                image: NetworkImage(
                  imageUrl,
                  // 'https://www.pngall.com/wp-content/uploads/4/Fortnite-PNG-Image-File.png',
                ),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          SizedBox(
            width: size.width * 0.02,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                // 'Fortnite',
                gameName,
                style: bodyText.copyWith(fontSize: 16.0),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Text(
                // 'Sandbox',
                gameType,
                style: bodyText.copyWith(fontSize: 14.0, color: Colors.grey),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: deepYellowColor,
                    size: 16.0,
                  ),
                  SizedBox(
                    width: size.width * 0.02,
                  ),
                  Text(
                    // '4.9',
                    ratings.toString(),
                    style: bodyText.copyWith(fontSize: 14.0),
                  ),
                  SizedBox(
                    width: size.width * 0.08,
                  ),
                  Icon(
                    Icons.download,
                    color: lightBgColor,
                    size: 16.0,
                  ),
                  SizedBox(
                    width: size.width * 0.02,
                  ),
                  Text(
                    '${downloads.toString()} k',
                    style: bodyText.copyWith(fontSize: 14.0),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            width: size.width * 0.14,
          ),
          SizedBox(
            width: size.width * 0.2,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Play',
                style: bodyText.copyWith(fontSize: 16.0),
              ),
              style: ElevatedButton.styleFrom(
                elevation: 2.0,
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  side: BorderSide(color: lightBgColor, width: 2.0),
                ),
                primary: bgColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  JumpingTabBar bottomNav() {
    return JumpingTabBar(
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
