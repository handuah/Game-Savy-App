import 'package:flutter/material.dart';
import 'package:game_savy_app/constants.dart';
import 'package:game_savy_app/start_page.dart';
import 'package:hexcolor/hexcolor.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            imageContainer(),
            SizedBox(
              height: size.height * 0.04,
            ),
            startBtn(),
          ],
        ),
      ),
    );
  }

  Container imageContainer() {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.6,
      width: size.width * 0.8,
      decoration: const BoxDecoration(
        // color: Colors.green,
        image: DecorationImage(
          image: NetworkImage(
              'https://www.pngarts.com/files/10/Fortnite-Character-PNG-Photo.png'),
          fit: BoxFit.fitHeight,
          filterQuality: FilterQuality.high,
        ),
      ),
    );
  }

  SizedBox startBtn() {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.8,
      height: size.height * 0.08,
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [lightBgColor, HexColor('#015FBF')],
            radius: 2.5,
            center: Alignment.topCenter,
            stops: const [0.3, 0.8],
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const StartPage()));
          },
          child: Text(
            'Start Now',
            style: bodyText.copyWith(fontSize: 16.0),
          ),
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            primary: Colors.transparent,
          ),
        ),
      ),
    );
  }
}
