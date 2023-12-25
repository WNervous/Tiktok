import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:tiktok/constants.dart';

class AuthController extends GetxController {
  // UserCredential 中 的User对象，可用来更新 user信息 eg:user?.updateEmail("janeq@example.com")

  _uploadAvatar(String uid, File image) async {
    // 创建目录
    Reference ref = storage.ref();
    Reference refs = ref.child("avatar").child(uid);
    TaskSnapshot taskSnapshot = await refs.putFile(image);
    var download = await refs.getDownloadURL();
  }

  // 创建用户
  registerUser(String email, String password, File? image) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      var uid = credential.user!.uid;
      if (image != null) {
        _uploadAvatar(uid, image);
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  // 登陆
  signInWithAccount(String email, String password) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      credential.user?.displayName;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

  // 退出登陆
  signOut() async {
    await FirebaseAuth.instance.signOut();
  }
}
