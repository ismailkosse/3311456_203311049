import 'package:deneme5/Ana%20sayfalar/profil.dart';
import 'package:deneme5/Ana%20sayfalar/habersayfasi.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
            child: Stack(children: [
      Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: ListView(children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 15.0,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text(
                  "HABER SAYFALARI",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 24),
            Row(
              children: [
                buildHaberKaynagi(
                    fotograf: "assets/images/HaberTürk.png",
                    //isim: "Haber Türk",
                    screenWidth: screenWidth,
                    widget: HaberSayfasi(habersayfasi: "HABER TÜRK"),
                    context: context),
                buildHaberKaynagi(
                    fotograf: "assets/images/CNN.png",
                    //isim: "Hürriyet Haber",
                    screenWidth: screenWidth,
                    widget: HaberSayfasi(habersayfasi: "CNN HABER"),
                    context: context),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              children: [
                buildHaberKaynagi(
                    fotograf: "assets/images/sabah.png",
                    //isim: "Sabah",
                    screenWidth: screenWidth,
                    widget: HaberSayfasi(habersayfasi: "SABAH HABER"),
                    context: context),
                buildHaberKaynagi(
                    fotograf: "assets/images/haber7.png",
                    //isim: "Haber7",
                    screenWidth: screenWidth,
                    widget: HaberSayfasi(habersayfasi: "HABER7"),
                    context: context),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              children: [
                buildHaberKaynagi(
                    fotograf: "assets/images/Mynet.png",
                    //isim: "Mynet Haber",
                    screenWidth: screenWidth,
                    widget: HaberSayfasi(habersayfasi: "MyNet HABER"),
                    context: context),
                buildHaberKaynagi(
                    fotograf: "assets/images/Milliyet.png",
                    //isim: "Milliyet Haber",
                    screenWidth: screenWidth,
                    widget: HaberSayfasi(habersayfasi: "Milliyet HABER"),
                    context: context),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              children: [
                buildHaberKaynagi(
                    fotograf: "assets/images/Hürriyet.png",
                    //isim: "Cnn Haber",
                    screenWidth: screenWidth,
                    widget: HaberSayfasi(habersayfasi: "HÜRRİYET HABER"),
                    context: context),
                buildHaberKaynagi(
                  fotograf: "assets/images/Cumhuriyet.png",
                  //isim: "Cumhuriyet Haber",
                  screenWidth: screenWidth,
                  widget: HaberSayfasi(habersayfasi: "CUMHURİYET HABER"),
                  context: context,
                ),
              ],
            ),
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

Widget buildHaberKaynagi({
  required String fotograf,
  required double screenWidth,
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
          Container(
              width: (screenWidth - 60) * 0.5,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
              ),
              child: Image.asset(fotograf))
        ],
      ));
}

Widget buildHomeIcon({required IconData ikon, widget, context}) {
  return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return widget;
        }));
      },
      child: Icon(ikon, size: 25, color: Colors.black));
}
