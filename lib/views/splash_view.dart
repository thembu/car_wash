import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:car_wash/views/Front-End-Authentication/login_view.dart';
import 'package:flutter/material.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {

  void _navigatetohome() async {
    await  Future.delayed(Duration(milliseconds: 1000), () {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => login_view()));
  }


  @override
  void initState() {
    // TODO: implement initState
    _navigatetohome();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: 'assets/splash.jpg',
      nextScreen: login_view(),
      splashTransition: SplashTransition.decoratedBoxTransition,
      splashIconSize: 5000,
    );
  }
}
