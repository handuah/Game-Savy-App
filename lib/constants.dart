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

List gamesSearchData = [
  {
    'name': "Fortnite",
    'img_url':
        'https://cdn2.unrealengine.com/s15-evergreen-winterblue-newsheader-1920x1080-4af4edcd3291.jpg',
    'logo_url':
        'https://i.dlpng.com/static/png/5441973-fortnite-logo-transparent-fortnite-best-800-v-buck-skins-fortnite-logo-transparent-396_127_preview.png'
  },
  {
    'name': "Mortal Kombat",
    'img_url':
        'https://theactionelite.com/wp-content/uploads/2021/04/mortal-kombat-character-posters-social-featured.jpg',
    'logo_url':
        'https://www.pngkey.com/png/full/58-587429_krakkens-log-mortal-kombat-x-logo-png.png'
  },
  {
    'name': "Call of Duty",
    'img_url': 'https://cdn.mos.cms.futurecdn.net/zJiqmQmGfAAiozV2e7f9zQ.jpg',
    'logo_url':
        'https://upload.wikimedia.org/wikipedia/commons/4/47/Logo_Franchise_CoD.png'
  },
  {
    'name': "Injustice",
    'img_url':
        'https://i.pinimg.com/originals/fd/d2/e1/fdd2e14876d2a444ffada1d81e088fc3.png',
    'logo_url':
        'https://cdn2.steamgriddb.com/file/sgdb-cdn/logo/0f28b5d49b3020afeecd95b4009adf4c.png'
  },
  {
    'name': "Infamous",
    'img_url':
        'https://www.suckerpunch.com/wp-content/uploads/2017/10/key-art-07b.jpg',
    'logo_url':
        'https://preview.redd.it/xgf0kp6bqo251.png?auto=webp&s=e98d18f9f58cfa54fb990151a8e0f130086d7f96'
  },
];
