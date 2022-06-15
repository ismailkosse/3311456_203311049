import 'package:flutter/material.dart';

Widget buildkullanici({kullanici,required TextEditingController controller}) {
  return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
    TextFormField(
      controller: controller,
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