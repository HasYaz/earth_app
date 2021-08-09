import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../info_organize.dart';
import 'package:lottie/lottie.dart';


class europe extends StatefulWidget {

  @override
  _europeState createState() => _europeState();
}

class _europeState extends State<europe> {
  int currentMode = 1;

  var currentPage = [
    Text("Countires by Tourism"),
    organization("1st", Colors.amber, "France", "Tourists: 90.0 million"),
    organization("1st", Colors.blueGrey, "Spain", "Tourists: 83.7 million"),
    organization("3rd", Colors.purple, "Italy", "Tourists: 64.5 million")
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.teal,
                Colors.blue
              ]
          )
      ),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "Europe",
            style: GoogleFonts.parisienne(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 2.0,
              fontSize: 35,
            ),
          ),
          Container(
              child: Lottie.asset(
                "assets/bigben.json",
              )

          ),
          Card(
            child: Container(
                padding: EdgeInsets.all(6.0),
                height: 300,
                width: 250,
                child: Column( //Countries By Tourism
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    currentPage[0],
                    currentPage[1],
                    currentPage[2],
                    currentPage[3],
                  ],
                )
            ),
          ),
          Container(
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 275.0),
            child: FloatingActionButton(
              onPressed: () {
                setState(() {
                  currentMode++;
                  if (currentMode == 4){
                    currentMode = 1;
                  }
                  if (currentMode == 1){
                    currentPage = [
                      Text("Countires by Tourism"),
                      organization("1st", Colors.amber, "France", "Tourists: 90.0 million"),
                      organization("2nd", Colors.blueGrey, "Spain", "Tourists: 83.7 million"),
                      organization("3rd", Colors.purple, "Italy", "Tourists: 64.5 million")
                    ];
                  }
                  else if (currentMode == 2){
                    currentPage = [
                      Text("Countries by Crime"),
                      organization("1st", Colors.red, "Ukraine", "Crime Index: 48.85"),
                      organization("2nd", Colors.deepOrange, "Sweden", "Crime Index: 47.07"),
                      organization("3rd", Colors.yellow, "France", "Crime Index: 46.79")
                    ];
                  }
                  else {
                    currentPage = [
                      Text("Countries by Population"),
                      organization("1st", Colors.amber, "Russia", "Population: 145 million"),
                      organization("2nd", Colors.blueGrey, "Germany", "Population: 83 million"),
                      organization("3rd", Colors.purple, "United Kingdom", "Population: 67 million")
                    ];
                  };
                });
              },
              child: const Icon(Icons.arrow_forward_sharp),
              backgroundColor: Colors.redAccent,
            ),
          )
        ],
      ),
    );
  }
}
