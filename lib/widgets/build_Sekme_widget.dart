import 'package:flutter/material.dart';
Widget buildsekme({required String sekmeadi, required IconData ikon ,Function()? islem }) {
  return GestureDetector(onTap: islem,
    child: ListTile(
      title:Text(
        sekmeadi,
        style: TextStyle(color: Colors.black),

      ),
      trailing: Icon(


        ikon,
        color: Colors.black,

      ),

    ),
  );
}