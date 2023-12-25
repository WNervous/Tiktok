import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiktok/constants.dart';
import 'package:tiktok/view/screen/signup_screen.dart';
import 'package:tiktok/view/widget/textfiled_widget.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

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
          "Login",
          style: TextStyle(
              color: buttonColor, fontSize: 35, fontWeight: FontWeight.w800),
        ),
        const SizedBox(height: 20),
        Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: TextInputFiled(
              controller: _emailController,
              labelText: "email",
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
            print("sign in");
          },
          child: Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: 50,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                color: buttonColor, borderRadius: BorderRadius.circular(8)),
            child: const Text(
              "Sign in",
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
              "Don't have accout?",
              style: TextStyle(fontSize: 18),
            ),
            InkWell(
              onTap: () {
                Get.to(SignUpScreen());
              },
              child: Text(
                "Register In",
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
