import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Card organization(String Ranking, Color colorX, String country, String info){
  return Card(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Card(
          child: Text(
            Ranking,
            style: GoogleFonts.oswald(
                fontWeight: FontWeight.bold,
                fontSize: 36,
                color: colorX
            ),
          ),
        ),
        Column(
          children: [
            Text(
              country,
              style: GoogleFonts.oswald(
                  fontSize: 20,
                  color: Colors.black
              ),
            ),
            Text(
              info,
              style: GoogleFonts.oswald(
                  fontSize: 13,
                  color: Colors.grey
              ),
            )
          ],
        )
      ],
    ),
  );
}