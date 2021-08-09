import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../info_organize.dart';
import 'package:lottie/lottie.dart';


class asia extends StatefulWidget {

  @override
  _asiaState createState() => _asiaState();
}

class _asiaState extends State<asia> {
  int currentMode = 1;

  var currentPage = [
    Text("Countires by Tourism"),
    organization("1st", Colors.amber, "China", "Tourists: 65.7 million"),
    organization("1st", Colors.blueGrey, "Thailand", "Tourists: 39.8 million"),
    organization("3rd", Colors.purple, "Japan", "Tourists: 32.3 million")
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.red,
                Colors.pinkAccent
              ]
          )
      ),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "Asia",
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
                "assets/temple.json",
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
                      organization("1st", Colors.amber, "China", "Tourists: 65.7 million"),
                      organization("1st", Colors.blueGrey, "Thailand", "Tourists: 39.8 million"),
                      organization("3rd", Colors.purple, "Japan", "Tourists: 32.3 million")
                    ];
                  }
                  else if (currentMode == 2){
                    currentPage = [
                      Text("Countries by Crime"),
                      organization("1st", Colors.red, "Afghanistan", "Crime Index: 76.23"),
                      organization("2nd", Colors.deepOrange, "Syria", "Crime Index: 66.46"),
                      organization("3rd", Colors.yellow, "Bangladesh", "Crime Index: 63.94")
                    ];
                  }
                  else {
                    currentPage = [
                      Text("Countries by Population"),
                      organization("1st", Colors.amber, "China", "Population: 1.37 billion"),
                      organization("2nd", Colors.blueGrey, "India", "Population: 1.299 billion"),
                      organization("3rd", Colors.purple, "Indonesia", "Population: 255.46 million")
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
