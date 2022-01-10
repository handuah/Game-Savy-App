import 'package:flutter/material.dart';
import 'package:game_savy_app/constants.dart';

class SearchGames extends StatefulWidget {
  const SearchGames({Key? key}) : super(key: key);

  @override
  _SearchGamesState createState() => _SearchGamesState();
}

class _SearchGamesState extends State<SearchGames> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal,
      child: Center(
        child: Text(
          'Shuttle Details',
          style: bodyText.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
          ),
        ),
      ),
    );
  }
}
