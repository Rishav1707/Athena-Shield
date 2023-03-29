import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray700 = fromHex('#6d6464');

  static Color blueGray100 = fromHex('#d2d2d2');

  static Color blueA700 = fromHex('#265ff1');

  static Color gray800 = fromHex('#5a4848');

  static Color black9003f = fromHex('#3f000000');

  static Color deepPurple100 = fromHex('#d6d6f9');

  static Color gray50 = fromHex('#f9f9f9');

  static Color black90001 = fromHex('#020101');

  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color deepPurpleA200 = fromHex('#8a6ff8');

  static Color whiteA700 = fromHex('#ffffff');

  static Color pink400 = fromHex('#e23288');

  static Color redA700 = fromHex('#ff0000');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
