import 'package:car_wash/views/login_view.dart';
import 'package:car_wash/views/register_view.dart';
import 'package:car_wash/views/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Flutter Demo',

      home:  Splash_Screen(),

      routes: {

        '/register' : (context) => register_view()
      },

    );
  }
}
