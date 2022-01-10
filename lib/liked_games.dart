import 'package:flutter/material.dart';
import 'package:game_savy_app/constants.dart';

class LikedGames extends StatefulWidget {
  const LikedGames({Key? key}) : super(key: key);

  @override
  _LikedGamesState createState() => _LikedGamesState();
}

class _LikedGamesState extends State<LikedGames> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.indigoAccent,
      child: Center(
        child: Text(
          'Liked Games',
          style: bodyText.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
          ),
        ),
      ),
    );
  }
}
