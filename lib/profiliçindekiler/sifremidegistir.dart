import 'package:flutter/material.dart';
import '../widgets/build_kullanici_widget.dart';

class sifremidegistir extends StatelessWidget {
  sifremidegistir({Key? key}) : super(key: key);
  TextEditingController passwordController = TextEditingController();
  TextEditingController new1passwordController = TextEditingController();
  TextEditingController new2passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "PROFİL",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Container(
        child: Container(
          height: screenHeight,
          decoration: BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/ArkaPlan.png"),
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 15),
              buildkullanici(
                  kullanici: "ESKİ ŞİFRENİZİ GİRİNİZ",
                  controller: passwordController),
              SizedBox(height: 15),
              buildkullanici(
                  kullanici: "YENİ ŞİFRENİZİ GİRİNİZ",
                  controller: new1passwordController),
              SizedBox(height: 15),
              buildkullanici(
                  kullanici: "ŞİFRENİZİ TEKRAR GİRİNiZ",
                  controller: new2passwordController),
              SizedBox(height: 10),
              ElevatedButton(onPressed: (){}, child: Text("Değiştir"))
            ],
          ),
        ),
      ),
    );
  }
}
