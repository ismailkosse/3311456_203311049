import 'package:flutter/material.dart';

class HaberKategori extends StatelessWidget {
  HaberKategori({Key? key, required this.sayfalar}) : super(key: key);
  final String sayfalar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
    backgroundColor: Colors.white
        ,foregroundColor: Colors.black,),
        body: Center(
      child: Stack(children: [

        Text(sayfalar),
      ]),
         heightFactor: 15.0,
    )
    );
  }
}
