import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

//
const pages = [
  Text("HomeScreen"),
  Text("B"),
  Text("AddScreen"),
  Text("CommtScreen"),
  Text("ProfieScreen"),
];

const backgroundColor = Colors.black;
var buttonColor = Colors.red[400];
const borderColor = Colors.grey;

// Firebase About

final storage = FirebaseStorage.instance;
final firebaseAuth = FirebaseAuth.instance;
