import 'package:flutter/material.dart';

class Iletisim extends StatefulWidget {
  const Iletisim({Key? key}) : super(key: key);

  @override
  State<Iletisim> createState() => _IletisimState();
}

class _IletisimState extends State<Iletisim> {
  bool isEposta = true;
  bool isBildirim = true;
  bool isSMS = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("İletişim")),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(children: [
          build_iletisim_widget(
              "E-posta",
              "Bilgilendirilmek için e-posta almak istiyorum.",
              isEposta, (value) {
            setState(() {
              isEposta = value;
            });
          }),
          build_iletisim_widget(
              "Bildirim",
              "Bilgilendirilmek için bildirim almak istiyorum.",
              isBildirim, (value) {
            setState(() {
              isBildirim = value;
            });
          }),
          build_iletisim_widget(
              "SMS", "Bilgilendirilmek için SMS almak istiyorum.", isSMS,
                  (value) {
                setState(() {
                  isSMS = value;
                });
              }),

        ]),
      ),
    );
  }

  ListTile build_iletisim_widget(
      String title, String content, bool kontrol, Function(bool) onChanged) {
    return ListTile(
      title: Text(title),
      subtitle: Text(content),
      trailing: Switch(
          activeColor: Colors.blue, value: kontrol, onChanged: onChanged),
    );
  }
}