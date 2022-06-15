import 'package:deneme5/profili%C3%A7indekiler/iletisim.dart';
import 'package:deneme5/profili%C3%A7indekiler/sifremidegistir.dart';
import 'package:flutter/material.dart';
import '../widgets/build_Sekme_widget.dart';
class ayarlar extends StatelessWidget {
  const ayarlar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
              buildsekme(sekmeadi: "ŞİFREMİ DEĞİŞTİR", ikon: Icons.vpn_key,islem: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => sifremidegistir()));}),
              buildsekme(sekmeadi: "İLETİŞİM SEÇENEKLERİ", ikon: Icons.account_tree_outlined,islem: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Iletisim()));}),
              buildsekme(sekmeadi: "HESABIMI SİL", ikon: Icons.delete),
            ],
          )),
    );
  }
}


