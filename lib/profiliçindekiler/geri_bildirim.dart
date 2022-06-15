import 'package:flutter/material.dart';


class GeriBildirim extends StatelessWidget {
  GeriBildirim({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Geri Bildirim")),
      body: SizedBox(
        height: MediaQuery
            .of(context)
            .size
            .height,
        child: Column(
          children: [
            TextField(maxLines: 5,
              decoration: InputDecoration(hintText: "Mesajınız"),
            ),
            ElevatedButton(onPressed: () {}, child: Text("Gönder"))

          ],
        ),
      ),
    );
  }
}