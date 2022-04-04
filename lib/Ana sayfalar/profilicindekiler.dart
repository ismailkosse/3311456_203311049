import 'package:flutter/material.dart';
class prafilicindekiler extends StatelessWidget {
  const prafilicindekiler({Key? key , required String this.profil}) : super(key: key);
  final profil ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Stack(children: [
            Text(profil),
          ]),
          heightFactor: 15.0,
        )
    );
  }
}
