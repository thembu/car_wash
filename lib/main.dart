import 'package:car_wash/views/Front-End-Authentication/Registration_option.dart';
import 'package:car_wash/views/Front-End-Authentication/car_wash_registration.dart';
import 'package:car_wash/views/Front-End-Authentication/client_register_view.dart';
import 'package:car_wash/views/Front-End-Authentication/login_view.dart';
import 'package:car_wash/views/Menu/Home.dart';


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

        '/registration_option' : (context) => RegistrationOption(),
        '/client_register' : (context) => client_register_view()  ,
        'car_wash_user' : (context) => car_wash_register_view(),
        '/login ' : (context) => login_view(),
        '/home' : (context) => Home()
      },

    );
  }
}
