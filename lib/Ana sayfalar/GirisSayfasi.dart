import 'package:deneme5/Ana%20sayfalar/%C3%BCyeliksayfasi.dart';
import 'package:deneme5/Ana%20sayfalar/Sifremiunuttum.dart';
import 'package:deneme5/Ana%20sayfalar/anasayfa.dart';
import 'package:deneme5/firebase/firebase_dosyasi.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../komut.dart';
import '../widgets/build_kullanici_widget.dart';
class GirisSayfasi extends StatefulWidget {
  const GirisSayfasi({Key? key}) : super(key: key);

  @override
  State<GirisSayfasi> createState() => _LoginPageState();
}

class _LoginPageState extends State<GirisSayfasi> {
  Future<void> giris(eposta, sifre, context) async {
    try {
      final kullanici = firebaseservis().girisyapma(eposta, sifre);
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
  TextEditingController passwordController = TextEditingController();

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
                          buildkullanici(
                              kullanici: "KULLANICI ADI",
                              controller: emailController),
                          SizedBox(height: 25),
                          buildkullanici(
                              kullanici: "ŞİFRE",
                              controller: passwordController),
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
                                      onPressed: () => {
                                        giris(
                                            emailController.text.toString(),
                                            passwordController.text.toString(),
                                            context),
                                      },
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
}
