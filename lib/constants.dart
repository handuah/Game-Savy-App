import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

Color bgColor = HexColor('#0E214C');
Color bgColorBottom = HexColor('#102C5C');
Color lightBgColor = HexColor('#1388C7');
Color lightBtnColor = HexColor('#0F7ED0');
Color deepYellowColor = HexColor('#FFBF08');
Color violetColor = HexColor('#7563D3');
Gradient bodyGradient = LinearGradient(
  colors: [
    bgColor,
    bgColorBottom,
  ],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  stops: const [0.8, 0.9],
);
TextStyle bodyText = GoogleFonts.balsamiqSans(
  color: Colors.white,
  fontSize: 18.0,
  fontWeight: FontWeight.normal,
);

List jsonData = [
  {
    'name': "Fortnite",
    'game_type': "Sandbox",
    'rating': 4.9,
    'downloads': 20,
    'img_url':
        'https://www.pngall.com/wp-content/uploads/5/Overwatch-PNG-High-Quality-Image.png'
  },
  {
    'name': "Mortal Kombat 11",
    'game_type': "Fighting",
    'rating': 4.8,
    'downloads': 73,
    'img_url':
        'https://static.wikia.nocookie.net/mkwikia/images/c/cb/Ra.png/revision/latest?cb=20200509154910'
  },
  {
    'name': "Call of Duty",
    'game_type': "Shooting",
    'rating': 4.2,
    'downloads': 124,
    'img_url':
        'https://www.pngall.com/wp-content/uploads/2016/06/Call-of-Duty-Download-PNG.png'
  },
  {
    'name': "Infamous",
    'game_type': "Shooting",
    'rating': 4.2,
    'downloads': 124,
    'img_url':
        'https://www.nicepng.com/png/detail/437-4375821_cole-macgrath-cole-infamous.png'
  },
  {
    'name': "Justice League",
    'game_type': "Role Play",
    'rating': 4.2,
    'downloads': 124,
    'img_url':
        'https://www.pngall.com/wp-content/uploads/10/Injustice-Gods-Among-Us-PNG-Pic.png'
  },
  {
    'name': "Infamous",
    'game_type': "Shooting",
    'rating': 4.2,
    'downloads': 124,
    'img_url':
        'https://www.pngall.com/wp-content/uploads/5/Overwatch-PNG-High-Quality-Image.png'
  },
];
