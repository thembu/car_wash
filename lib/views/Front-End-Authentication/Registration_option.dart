import 'package:car_wash/views/Front-End-Authentication/car_wash_registration.dart';
import 'package:car_wash/views/Front-End-Authentication/client_register_view.dart';

import 'package:flutter/material.dart';

class RegistrationOption extends StatefulWidget {
  const RegistrationOption({super.key});

  @override
  State<RegistrationOption> createState() => _RegistrationOptionState();
}

class _RegistrationOptionState extends State<RegistrationOption> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(

      appBar: AppBar(title: Text('Which user are you '), backgroundColor: Colors.redAccent,  ),

      body: Flex(direction: Axis.vertical, children: <Widget>[
        const SizedBox(
          height: 50,
        ),
        const Text(
          'Are you a client or car wash ?',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(50, 250, 50, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                  child:  const CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/client.png'),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder:  (context) => const client_register_view()));
                  }),
              const VerticalDivider(
                width: 3,
              ),
              const SizedBox(
                width: 30,
              ),
              GestureDetector(
                  child: const CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/car_wash.png'),
                  ),
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) =>  car_wash_register_view()));
                  })
            ],
          ),
        ),
      ]),


    );
  }
}
