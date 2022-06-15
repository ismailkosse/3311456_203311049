import 'package:flutter/material.dart';

Widget buildHomeIcon({required IconData ikon, widget, context}) {
  return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return widget;
        }));
      },
      child: Icon(ikon, size: 25, color: Colors.black));
}
