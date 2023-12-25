import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tiktok/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int idx = 0;
  PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: idx,
          onTap: (index) {
            setState(() {
              idx = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 30,
                ),
                label: "HomeScreen"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 30,
                ),
                label: "HomeScreen"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 30,
                ),
                label: "HomeScreen"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 30,
                ),
                label: "HomeScreen"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 30,
                ),
                label: "HomeScreen"),
          ]),
      body: PageView.builder(
          controller: controller,
          itemBuilder: (context, index) {
            return pages[index];
          }),
    );
  }
}
