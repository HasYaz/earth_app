import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import './continents/europe.dart';
import './continents/africa.dart';
import './continents/asia.dart';
import './continents/americas.dart';

class continents_view extends StatelessWidget {
  LiquidController? liquidController;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(
        pages: [
          europe(),
          africa(),
          asia(),
          america()

        ],
      ),
    );
  }
}
