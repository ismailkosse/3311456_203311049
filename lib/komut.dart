import 'package:flutter/material.dart';
void gonder({context, widget}) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) {
      return widget;
    }),
  );
}



