
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';


class animationPlay extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 400,
              width: 400,
              child: Lottie.asset(
                "assets/earth.json", fit: BoxFit.fill,
              ),
            ),
          ),
          Text(
            "Earth",
            style: GoogleFonts.mcLaren(
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  color: Colors.red,
                  fontSize: 20,
                )
            ),
          )
        ],
      ),
    );
  }
}
