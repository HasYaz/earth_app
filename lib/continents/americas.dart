import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../info_organize.dart';
import 'package:lottie/lottie.dart';


class america extends StatefulWidget {

  @override
  _americaState createState() => _americaState();
}

class _americaState extends State<america> {
  int currentMode = 1;

  var currentPage = [
    Text("Countires by Tourism"),
    organization("1st", Colors.amber, "United States", "Tourists: 79.3 million"),
    organization("1st", Colors.blueGrey, "Mexico", "Tourists: 45.0 million"),
    organization("3rd", Colors.purple, "Canada", "Tourists: 22.1 million")
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.green,
                Colors.red
              ]
          )
      ),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "Americas",
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
                "assets/mouse.json",
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
                      organization("1st", Colors.amber, "United States", "Tourists: 79.3 million"),
                      organization("1st", Colors.blueGrey, "Mexico", "Tourists: 45.0 million"),
                      organization("3rd", Colors.purple, "Canada", "Tourists: 22.1 million")
                    ];
                  }
                  else if (currentMode == 2){
                    currentPage = [
                      Text("Countries by Crime"),
                      organization("1st", Colors.red, "Venezuela", "Crime Index: 84.36"),
                      organization("2nd", Colors.deepOrange, "Papua New Guinea", "Crime Index: 80.04"),
                      organization("3rd", Colors.yellow, "South Africa", "Crime Index: 77.29")
                    ];
                  }
                  else {
                    currentPage = [
                      Text("Countries by Population"),
                      organization("1st", Colors.amber, "United States", "Population: 331 million"),
                      organization("2nd", Colors.blueGrey, "Brazil", "Population: 219 million"),
                      organization("3rd", Colors.purple, "Mexico", "Population: 126 million")
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
