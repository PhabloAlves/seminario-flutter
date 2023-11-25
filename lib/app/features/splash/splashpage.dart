import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_application_1/app/core/constants/app_assets.dart';
import 'package:flutter_application_1/app/core/constants/app_routes.dart';

class splashpage extends StatefulWidget {
  const splashpage({super.key});

  @override
  State<splashpage> createState() => splashpageState();
}

class splashpageState extends State<splashpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset(AppAssets.logo).animate().fade(begin: 0, end: 1, duration: 3.seconds).shake(
              hz: 4,
              duration: 1.seconds,
              delay: 2.seconds,
            ),
        SizedBox(height: 30),
        Padding(
            padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(AppRoutes.login);
                },
                style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.purple), textStyle: MaterialStatePropertyAll(TextStyle(color: Colors.white))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.login),
                    SizedBox(width: 10),
                    Text(
                      'ENTRAR',
                      style: TextStyle(color: Colors.lightGreenAccent, fontWeight: FontWeight.bold, fontSize: 18),
                    )
                  ],
                )))
      ])),
    );
  }
}
