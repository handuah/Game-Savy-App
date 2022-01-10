import 'package:flutter/material.dart';
import 'package:game_savy_app/constants.dart';

class ShopGames extends StatefulWidget {
  const ShopGames({Key? key}) : super(key: key);

  @override
  _ShopGamesState createState() => _ShopGamesState();
}

class _ShopGamesState extends State<ShopGames> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: topBar(),
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
}
