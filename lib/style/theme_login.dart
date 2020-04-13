import 'dart:ui';
import 'package:flutter/cupertino.dart';


class Colors {

  const Colors();

  static const Color loginGradientStart = const Color(0xff4d94ff); 

  static const Color loginGradientEnd = const Color(0xff002966);

  static const primaryGradient = const LinearGradient(
    colors: const [loginGradientStart, loginGradientEnd],
    stops: const [0.0, 1.0],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}