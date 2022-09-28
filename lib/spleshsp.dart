import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'login.dart';

class SplashScreen6 extends StatefulWidget {
  const SplashScreen6({Key? key}) : super(key: key);

  @override
  _SplashScreen6State createState() => _SplashScreen6State();
}

class _SplashScreen6State extends State<SplashScreen6> {


  @override
  Widget build(BuildContext context) {
    return SplashScreen6sub();
  }
}

class SplashScreen6sub extends StatelessWidget {
  const SplashScreen6sub({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splashIconSize: 1100,
      splash: 'assets/yourshope.gif',
      nextScreen: const HomeSpl(),
      splashTransition: SplashTransition.sizeTransition,
      // pageTransitionType: PageTransitionType.scale,
    );
  }
}

class HomeSpl extends StatelessWidget {
  const HomeSpl({Key? key}) : super(key: key);


  @override

  Widget build(BuildContext context) {
    return HomePage();
  }
}


