import 'package:deneme5/Ana%20sayfalar/profil.dart';
import 'package:deneme5/Ana%20sayfalar/habersayfasi.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import '../widgets/build_HomeIcon_widget.dart';
import '../widgets/build_haberkaynagi_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double size = 0.1;

  Map<String, double> dataMap = {
    "Haber Türk (98.524)": 98524,
    "Cnn (26.300)": 26300,
    "Sabah (195.471)": 195471,
    "Haber7 (15.965)": 15965,
    "MyNet (30.456)": 30456,
    "Milliyet (124.335)": 124335,
    "Hürriyet (197.686)": 197686,
    "Cumhuriyet (28.004)": 28004,
  };

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        size = 0.4;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.87,
                width: screenWidth,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
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
                              size: size,
                              fotograf: "assets/images/HaberTürk.png",
                              //isim: "Haber Türk",
                              screenWidth: screenWidth,
                              widget: HaberSayfasi(habersayfasi: "HABER TÜRK"),
                              context: context),
                          buildHaberKaynagi(
                              size: size,
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
                              size: size,
                              fotograf: "assets/images/sabah.png",
                              //isim: "Sabah",
                              screenWidth: screenWidth,
                              widget: HaberSayfasi(habersayfasi: "SABAH HABER"),
                              context: context),
                          buildHaberKaynagi(
                              size: size,
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
                              size: size,
                              fotograf: "assets/images/Mynet.png",
                              //isim: "Mynet Haber",
                              screenWidth: screenWidth,
                              widget: HaberSayfasi(habersayfasi: "MyNet HABER"),
                              context: context),
                          buildHaberKaynagi(
                              size: size,
                              fotograf: "assets/images/Milliyet.png",
                              //isim: "Milliyet Haber",
                              screenWidth: screenWidth,
                              widget:
                                  HaberSayfasi(habersayfasi: "Milliyet HABER"),
                              context: context),
                        ],
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        children: [
                          buildHaberKaynagi(
                              size: size,
                              fotograf: "assets/images/Hürriyet.png",
                              //isim: "Cnn Haber",
                              screenWidth: screenWidth,
                              widget:
                                  HaberSayfasi(habersayfasi: "HÜRRİYET HABER"),
                              context: context),
                          buildHaberKaynagi(
                            size: size,
                            fotograf: "assets/images/Cumhuriyet.png",
                            //isim: "Cumhuriyet Haber",
                            screenWidth: screenWidth,
                            widget:
                                HaberSayfasi(habersayfasi: "CUMHURİYET HABER"),
                            context: context,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "EN ÇOK ZİYARET EDİLEN HABER SİTESİ",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.red),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: PieChart(
                          colorList: [
                            Colors.blue,
                            Colors.amberAccent,
                            Colors.brown,
                            Colors.green,
                            Colors.lightGreen,
                            Colors.black87,
                            Colors.purple,
                            Colors.orange
                          ],
                          dataMap: dataMap,
                          animationDuration: const Duration(seconds: 3),
                          chartLegendSpacing: 32,
                          chartRadius: MediaQuery.of(context).size.width * 0.5,
                          initialAngleInDegree: 0,
                          chartType: ChartType.disc,
                          ringStrokeWidth: 32,
                          legendOptions: const LegendOptions(
                            showLegendsInRow: false,
                            legendPosition: LegendPosition.bottom,
                            showLegends: true,
                            legendTextStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          chartValuesOptions: const ChartValuesOptions(
                            showChartValueBackground: true,
                            showChartValues: true,
                            showChartValuesInPercentage: true,
                            showChartValuesOutside: true,
                            decimalPlaces: 1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
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
            ],
          ),
        ),
      ),
    );
  }
}
