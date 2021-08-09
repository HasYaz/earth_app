import 'dart:async';

import 'package:flutter/material.dart';
import 'package:randomapp/continents/europe.dart';
import 'package:randomapp/continents_view.dart';
import 'startup/startup_view.dart';
import 'package:lottie/lottie.dart';


void main() {
  runApp(
      MaterialApp(home: MainApp(), debugShowCheckedModeBanner: false)
  );
}

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}


class _MainAppState extends State<MainApp> {
  bool animationEnabled = true;
  bool buttonReady = false;

  void initState(){
    super.initState();
    Timer(Duration(seconds: 4),(){
      setState(() {
        buttonReady = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Visibility(
                  visible: animationEnabled,
                  child: animationPlay()
              ),
              Container(
                width: double.infinity,
                height: 90,
              ),
              Visibility(
                visible: buttonReady,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      animationEnabled = false;
                      buttonReady = false;
                      Navigator.push(context, new MaterialPageRoute(
                          builder: (context) => continents_view()
                      )
                      );
                    });
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.transparent,
                    child: Lottie.asset(
                      "assets/checkmark.json",
                      repeat: false,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),

    );
  }
}
