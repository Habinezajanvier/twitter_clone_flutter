import 'package:flutter/material.dart';

class Palette {
  static const MaterialColor twitterBlue = MaterialColor(
    0xff15202b, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xff131d27), //10%
      100: Color(0xff111a22), //20%
      200: Color(0xff0f161e), //30%
      300: Color(0xff0d131a), //40%
      400: Color(0xff0b1016), //50%
      500: Color(0xff080d11), //60%
      600: Color(0xff060a0d), //70%
      700: Color(0xff040609), //80%
      800: Color(0xff020304), //90%
      900: Color(0xff000000), //100%
    },
  );
} // you
