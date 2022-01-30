import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget additionalInformationWidget(
    String wind, String humidity, String pressure, String feels_like) {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(15.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            columnS("Rüzgar", "Basınç", "Nem", "Hissedilen sıcaklık"),
            columnS("$wind", "$pressure", "$humidity", "$feels_like"),
          ],
        )
      ],
    ),
  );
}

Container columnS(
  String ruzgar,
  String basinc,
  String nem,
  String hissedilen,
) {
  return Container(
    margin: EdgeInsets.only(top: 250),
    child: Column(
      children: [
        Text(
          ruzgar,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          basinc,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          nem,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          hissedilen,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        SizedBox(
          height: 15.0,
        ),
      ],
    ),
  );
}

TextStyle titlefont =
    const TextStyle(fontWeight: FontWeight.w500, fontSize: 15.0);

/*
Column(
    children: [
      Text(
        ruzgar,
        style: TextStyle(color: Colors.white),
      ),
      SizedBox(
        height: 15.0,
      ),
      Text(
        basinc,
        style: TextStyle(color: Colors.white),
      ),
      SizedBox(
        height: 15.0,
      ),
      Text(
        nem,
        style: TextStyle(color: Colors.white),
      ),
      SizedBox(
        height: 15.0,
      ),
      Text(
        hissedilen,
        style: TextStyle(color: Colors.white),
      ),
      SizedBox(
        height: 15.0,
      ),
    ],
  );
*/