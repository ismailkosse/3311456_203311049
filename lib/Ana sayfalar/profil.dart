import 'package:deneme5/Ana%20sayfalar/anasayfa.dart';
import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "PROFİL",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          backgroundColor: Colors.white
      ,foregroundColor: Colors.black,),
      body: SafeArea(
          child: ListView(
        children: [
          buildsekme(sekmeadi: "AYARLAR", ikon: Icons.build),
          buildsekme(sekmeadi: "GİZLİLİK", ikon: Icons.lock_outline),
          buildsekme(sekmeadi: "GÜVENLİK", ikon: Icons.security),
          buildsekme(sekmeadi: "ŞİFREMİ DEĞİŞTİR", ikon: Icons.vpn_key),
          buildsekme(sekmeadi: "HESABIMI SİL", ikon: Icons.delete),
        ],
      )),
    );
  }
}

Widget buildsekme({required String sekmeadi, required IconData ikon}) {
  return Container(
    padding: EdgeInsets.all(15),
    margin: EdgeInsets.only(bottom: 15, top: 20),
    width: double.infinity,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 4,
              offset: Offset(0, 4)),
        ]),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Text(
              sekmeadi,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.black,
              ),
            ),
          ],
        ),
        Column(
          children: [
            Icon(
              ikon,
              size: 25,
              color: Colors.black,
            )
          ],
        )
      ],
    ),
  );
}
