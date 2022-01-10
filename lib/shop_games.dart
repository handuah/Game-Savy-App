import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:game_savy_app/constants.dart';

class ShopGames extends StatefulWidget {
  const ShopGames({Key? key}) : super(key: key);

  @override
  _ShopGamesState createState() => _ShopGamesState();
}

class _ShopGamesState extends State<ShopGames> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: bgColor,
      appBar: topBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            searchInput(),
            SizedBox(
              height: size.height * 0.02,
            ),
            gameList(),
          ],
        ),
      ),
    );
  }

  AppBar topBar() {
    return AppBar(
      backgroundColor: bgColor,
      elevation: 0.0,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.chevron_left),
        color: Colors.white,
        iconSize: 30.0,
      ),
      title: Center(
        child: Text(
          'Popular Games',
          style: bodyText.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications_none),
          color: Colors.white,
          iconSize: 30.0,
        ),
      ],
    );
  }

  TextField searchInput() {
    Size size = MediaQuery.of(context).size;
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.search,
          color: Colors.white.withOpacity(0.5),
        ),
        suffixIcon: Icon(
          AntDesign.filter,
          color: lightBgColor,
        ),
        label: Text(
          'Search Games',
          style: bodyText.copyWith(
              color: Colors.white.withOpacity(0.5), fontSize: 14.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: lightBgColor),
        ),
      ),
    );
  }

  SizedBox gameList() {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.65,
      width: size.width,
      // color: Colors.green,
      child: GridView.builder(
          itemCount: gamesSearchData.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 20.0,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: size.height * 0.2,
              width: size.width / 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.red,
                image: DecorationImage(
                  image: NetworkImage(
                    // 'https://cdn2.unrealengine.com/s15-evergreen-winterblue-newsheader-1920x1080-4af4edcd3291.jpg',
                    gamesSearchData[index]['img_url'],
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  Container(
                    alignment: Alignment.bottomCenter,
                    height: size.height * 0.08,
                    width: size.width,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Colors.transparent, Colors.black54],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.2, 0.8],
                      ),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                      ),
                      image: DecorationImage(
                        image: NetworkImage(
                          // 'https://www.pngkey.com/png/full/58-587429_krakkens-log-mortal-kombat-x-logo-png.png',
                          gamesSearchData[index]['logo_url'],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
