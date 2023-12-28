import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

import 'view/screen/addvideo_screen.dart';

//tabpage
final pages = <Widget>[
  Text("HomeScreen"),
  Text("c"),
  AddVideoScreen(),
  Text("CommtScreen"),
  Text("ProfieScreen"),
];

final videos = [
  "https://www.w3school.com.cn/example/html5/mov_bbb.mp4",
  "https://media.w3.org/2010/05/sintel/trailer.mp4",
  "https://www.w3schools.com/html/movie.mp4"
];

const backgroundColor = Colors.black;
var buttonColor = Colors.red[400];
const borderColor = Colors.grey;

// Firebase About

final storage = FirebaseStorage.instance;
final firebaseAuth = FirebaseAuth.instance;
