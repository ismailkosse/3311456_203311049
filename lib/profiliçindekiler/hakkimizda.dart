import 'package:flutter/material.dart';


class Hakkimizda extends StatelessWidget {
  const Hakkimizda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hakkımızda")),
      body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Ne Yapıyoruz?",
                  style:
                  TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const Text(
                    '''Türkiye'de ve dünyada meydana gelen olaylar ve gelişmeleri ajanslar ve kendi ekibimiz aracılığıyla takip ederek size sunuyoruz. Sitemizde, kendi mahallenizden dünyanın en uzak köşesine kadar her yer ile ilgili haber okuyabilirsiniz. Ziyaretçilere, son 10 günün tüm haberleri içinde konuya göre arama yapma olanağı sunmaktayız. Bu arama, kelime ve ilgili bazlı, yapay zeka ile desteklenmiş gerçek bir haber arama sayfasıdır.'''),
              ],
            ),
          )),
    );
  }
}