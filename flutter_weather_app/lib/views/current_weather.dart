// şuan ki hava durumu widget ı

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// widget ımız icon, sıcaklık ve konum bilgileri tutuyor.
Widget currentWeather(String temp, String location) {
  return Center(
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(60, 70, 40, 60),
          child: Text(
            "$location",
            style: TextStyle(fontSize: 26.0, color: Colors.white),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          child: Text(
            "$temp C",
            style: TextStyle(fontSize: 55.0, color: Colors.white),
          ),
        ),
      ],
    ),
  );
}
