import 'package:deneme5/profili%C3%A7indekiler/ayarlar.dart';
import 'package:flutter/material.dart';
import '../profiliçindekiler/geri_bildirim.dart';
import '../profiliçindekiler/gizlilik.dart';
import '../widgets/build_Sekme_widget.dart';

class Profil extends StatelessWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "PROFİL",
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: SafeArea(
          child: ListView(
        children: [
          buildsekme(
              sekmeadi: "AYARLAR",
              ikon: Icons.build,
              islem: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ayarlar()));
              }),
          buildsekme(
              sekmeadi: "Gizlilik",
              ikon: Icons.privacy_tip_sharp,
              islem: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => gizlilik()));
              }),
          buildsekme(
              sekmeadi: "Geri Bildirim",
              ikon: Icons.feedback_rounded,
              islem: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GeriBildirim()));
              }),
        ],
      )),
    );
  }
}
