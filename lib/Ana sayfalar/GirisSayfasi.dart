import 'package:deneme5/Ana%20sayfalar/%C3%BCyeliksayfasi.dart';
import 'package:deneme5/Ana%20sayfalar/Sifremiunuttum.dart';
import 'package:deneme5/Ana%20sayfalar/anasayfa.dart';
import 'package:flutter/material.dart';

class GirisSayfasi extends StatefulWidget {
  const GirisSayfasi({Key? key}) : super(key: key);

  @override
  State<GirisSayfasi> createState() => _LoginPageState();
}

class _LoginPageState extends State<GirisSayfasi> {
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
                          buildkullanici(kullanici: "KULLANICI ADI"),
                          SizedBox(height: 25),
                          buildkullanici(kullanici: "ŞİFRE"),
                          SizedBox(height: 15),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    MaterialButton(
                                      color: Colors.white,
                                      child: Text("ŞİFREMİ UNUTTUM"),
                                      onPressed: () => gonder(
                                          context: context,
                                          widget: Sifremiunuttum()),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    MaterialButton(
                                      color: Colors.white,
                                      child: Text("GİRİŞ YAP"),
                                      onPressed: () => gonder(
                                          context: context, widget: HomePage()),
                                    ),
                                  ],
                                ),
                              ]),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Üye değil misiniz ?",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 15.0),
                          MaterialButton(
                              color: Colors.white,
                              child: Text(
                                "ÜYE OL",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              onPressed: () =>
                                  gonder(context: context, widget: KayitOl())),
                        ],
                      ),
                    )
                  ],
                ))));
  }

  void gonder({context, widget}) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return widget;
      }),
    );
  }
}
