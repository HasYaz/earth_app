import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../info_organize.dart';
import 'package:lottie/lottie.dart';


class africa extends StatefulWidget {

  @override
  _africaState createState() => _africaState();
}

class _africaState extends State<africa> {
  int currentMode = 1;

  var currentPage = [
    Text("Countires by Tourism"),
    organization("1st", Colors.amber, "Morocco", "Tourists: 12.93 million"),
    organization("1st", Colors.blueGrey, "South Africa", "Tourists: 10.23 million"),
    organization("3rd", Colors.purple, "Tunisia", "Tourists: 9.43 million")
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.orange,
                Colors.deepOrange
              ]
          )
      ),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "Africa",
            style: GoogleFonts.parisienne(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 2.0,
              fontSize: 35,
            ),
          ),
          Container(
              height:300,
              width: 300,
              child: Lottie.asset(
                "assets/desert.json",
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
                      organization("1st", Colors.amber, "Morocco", "Tourists: 12.93 million"),
                      organization("1st", Colors.blueGrey, "South Africa", "Tourists: 10.23 million"),
                      organization("3rd", Colors.purple, "Tunisia", "Tourists: 9.43 million")
                    ];
                  }
                  else if (currentMode == 2){
                    currentPage = [
                      Text("Countries by Crime"),
                      organization("1st", Colors.red, "South Africa", "Crime Index: 77.49"),
                      organization("2nd", Colors.deepOrange, "Namibia", "Crime Index: 67.21"),
                      organization("3rd", Colors.yellow, "Angola", "Crime Index: 64.97")
                    ];
                  }
                  else {
                    currentPage = [
                      Text("Countries by Population"),
                      organization("1st", Colors.amber, "Nigeria", "Population: 206 million"),
                      organization("2nd", Colors.blueGrey, "Ethiopia", "Population: 114 million"),
                      organization("3rd", Colors.purple, "Egypt", "Population: 102 million")
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
