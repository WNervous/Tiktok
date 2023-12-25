import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants.dart';
import '../widget/textfiled_widget.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Register",
          style: TextStyle(
              color: buttonColor, fontSize: 35, fontWeight: FontWeight.w800),
        ),
        const SizedBox(height: 20),
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.grey),
              child: const Icon(Icons.person),
            ),
            InkWell(
                onTap: () {
                  print("photo");
                },
                child: Container(
                    color: Colors.grey, child: const Icon(Icons.photo)))
          ],
        ),
        const SizedBox(height: 20),
        Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: TextInputFiled(
              controller: _usernameController,
              labelText: "username",
              iconData: Icons.person),
        ),
        const SizedBox(height: 30),
        Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: TextInputFiled(
              controller: _emailController,
              labelText: "emain",
              iconData: Icons.email),
        ),
        const SizedBox(height: 30),
        Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: TextInputFiled(
              controller: _passwordController,
              labelText: "password",
              iconData: Icons.lock),
        ),
        const SizedBox(height: 30),
        InkWell(
          onTap: () {
            print("Register");
          },
          child: Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: 50,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                color: buttonColor, borderRadius: BorderRadius.circular(8)),
            child: const Text(
              "Register",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 20),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Already have an accout?",
              style: TextStyle(fontSize: 18),
            ),
            InkWell(
              onTap: () {
                Get.back();
              },
              child: Text(
                "Login",
                style: TextStyle(
                    color: buttonColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
            )
          ],
        )
      ],
    )));
  }
}
