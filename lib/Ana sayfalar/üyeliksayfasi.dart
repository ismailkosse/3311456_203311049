import 'package:deneme5/Ana%20sayfalar/GirisSayfasi.dart';
import 'package:deneme5/Ana%20sayfalar/anasayfa.dart';
import 'package:deneme5/firebase/kullan%C4%B1c%C4%B1.dart';
import 'package:deneme5/firebase/firebase_dosyasi.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../komut.dart';
import '../widgets/build_kullanici_widget.dart';

class KayitOl extends StatelessWidget {
  KayitOl({Key? key}) : super(key: key);

  Future<void> kayit(eposta, sifre, context) async {
    try {
      Users users = Users(
          ad: nameController.text.toString(),
          email: emailController.text.toString(),
          soyad: surnameController.text.toString(),
          sifre: passwordController.text.toString());
      final kullanici = firebaseservis().kullaniciolusturma(
        eposta,
        sifre,
        users
      );
      gonder(context: context, widget: HomePage());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('Şifre güçsüz');
      } else if (e.code == 'email-already-in-use') {
        print('Bu eposta zaten kullanılmış');
      }
    } catch (e) {
      print(e);
    }
  }

  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController surnameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController password1Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
                height: screenHeight,
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
                                buildkullanici(
                                    kullanici: "AD",
                                    controller: nameController),
                                SizedBox(height: 15),
                                buildkullanici(
                                    kullanici: "SOYADI",
                                    controller: surnameController),
                                SizedBox(height: 15),
                                buildkullanici(
                                    kullanici: "E POSTA",
                                    controller: emailController),
                                SizedBox(height: 15),
                                buildkullanici(
                                    kullanici: " ŞİFRE",
                                    controller: passwordController),
                                SizedBox(height: 15),
                                buildkullanici(
                                    kullanici: "ŞİFREYİ TEKRAR GİRNİZ",
                                    controller: password1Controller),
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
                                              onPressed: () => {
                                                    kayit(
                                                        emailController.text
                                                            .toString(),
                                                        passwordController.text
                                                            .toString(),
                                                        context),
                                                  })
                                        ],
                                      ),
                                    ]),
                              ],
                            ),
                          )
                        ])))));
  }
}
