import 'package:deneme5/profili%C3%A7indekiler/hakkimizda.dart';
import 'package:deneme5/profili%C3%A7indekiler/sozlesme.dart';
import 'package:flutter/material.dart';
import '../widgets/build_Sekme_widget.dart';
class gizlilik extends StatelessWidget {
  const gizlilik({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(
          "Gizlilik",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: Colors.white
        ,foregroundColor: Colors.black,),
      body: SafeArea(
          child: ListView(
            children: [
              buildsekme(sekmeadi: "HAKKIMIZDA", ikon: Icons.info,islem: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Hakkimizda()));}),
              buildsekme(sekmeadi: "KULLANICI SÖZLEŞMESİ", ikon: Icons.verified_user_rounded,islem: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Sozlesme()));}),

            ],
          )),
    );
  }
}


