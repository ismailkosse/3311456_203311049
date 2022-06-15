import 'package:deneme5/Ana%20sayfalar/profil.dart';
import 'package:deneme5/Ana%20sayfalar/anasayfa.dart';
import 'package:deneme5/Ana%20sayfalar/haberkategori.dart';
import 'package:flutter/material.dart';
import '../widgets/build_HomeIcon_widget.dart';
import '../widgets/build_Kategori_widget.dart';


class HaberSayfasi extends StatelessWidget {
  const HaberSayfasi({Key? key, required this.habersayfasi}) : super(key: key);
  final String habersayfasi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white, foregroundColor: Colors.black),
        body: SafeArea(
            child: Stack(children: [
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15),
                        Text(
                          habersayfasi,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 25),
                        Expanded(
                            child: ListView(
                              children: [
                                buildKategori(
                                    kategori: "EKONOMİ",
                                    widget: HaberKategori(sayfalar: habersayfasi),
                                    context: context),
                                buildKategori(
                                    kategori: "SPOR",
                                    widget: HaberKategori(sayfalar: habersayfasi),
                                    context: context),
                                buildKategori(
                                    kategori: "SİYASET",
                                    widget: HaberKategori(sayfalar: habersayfasi),
                                    context: context),
                                buildKategori(
                                    kategori: "TEKNOLOJİ",
                                    widget: HaberKategori(sayfalar: habersayfasi),
                                    context: context),
                                buildKategori(
                                    kategori: "MAGAZİN",
                                    widget: HaberKategori(sayfalar: habersayfasi),
                                    context: context),
                              ],
                            ))
                      ])),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                  color: Colors.grey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      buildHomeIcon(
                          ikon: Icons.home_outlined,
                          widget: HomePage(),
                          context: context),
                      buildHomeIcon(
                          ikon: Icons.account_circle,
                          widget: Profil(),
                          context: context)
                    ],
                  ),
                ),
              ),
            ])));
  }
}