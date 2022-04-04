import 'package:deneme5/Ana%20sayfalar/GirisSayfasi.dart';
import 'package:deneme5/Ana%20sayfalar/anasayfa.dart';
import 'package:flutter/material.dart';

class KayitOl extends StatelessWidget {
  const KayitOl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/ArkaPlan.png"),
            )),
            child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15.0,
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Text(
                          "İSONEWSS ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                          ),
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            buildkullanici(kullanici: "AD"),
                            SizedBox(height: 15),
                            buildkullanici(kullanici: "SOYADI"),
                            SizedBox(height: 15),
                            buildkullanici(kullanici: "E POSTA"),
                            SizedBox(height: 15),
                            buildkullanici(kullanici: " ŞİFRE"),
                            SizedBox(height: 15),
                            buildkullanici(kullanici: "ŞİFREYİ TEKRAR GİRNİZ"),
                            SizedBox(height: 15),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      MaterialButton(
                                          color: Colors.white,
                                          child: Text("GİRİŞ YAP"),
                                          onPressed: () => gonder(
                                              context: context,
                                              widget: GirisSayfasi()))
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      MaterialButton(
                                          color: Colors.white,
                                          child: Text("ÜYE OL"),
                                          onPressed: () => gonder(
                                              context: context,
                                              widget: HomePage()))
                                    ],
                                  ),
                                ]),
                          ],
                        ),
                      )
                    ]))));
  }
}

Widget buildkullanici({kullanici}) {
  return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
    TextFormField(
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(10),
          ),
          labelText: kullanici,
          labelStyle: TextStyle(color: Colors.white),
          border: OutlineInputBorder()),
    ),
  ]);
}

void gonder({context, widget}) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) {
      return widget;
    }),
  );
}
