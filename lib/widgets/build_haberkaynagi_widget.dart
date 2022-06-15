import 'package:flutter/material.dart';

Widget buildHaberKaynagi({
  required String fotograf,
  required double screenWidth,
  required double size,
  widget,
  context,
}) {
  return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return widget;
        }));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AnimatedContainer(
              duration: Duration(seconds: 1),
              curve: Curves.bounceOut,
              width: (screenWidth*size),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
              ),
              child: Image.asset(fotograf))
        ],
      ));
}