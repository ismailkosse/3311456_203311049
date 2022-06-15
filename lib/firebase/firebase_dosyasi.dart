import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:deneme5/firebase/kullan%C4%B1c%C4%B1.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'kullanıcı.dart';


class firebaseservis {
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<User?> girisyapma(String email, String password) async {
    var user = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
    return user.user;
  }

  Future<User?> kullaniciolusturma(String email, String password,
      Users users) async {
    var user = await auth.createUserWithEmailAndPassword(
        email: email, password: password);

    await firestore
        .collection("users")
        .doc(user.user!.uid)
        .set(users.toJson());
    return user.user;
  }
}