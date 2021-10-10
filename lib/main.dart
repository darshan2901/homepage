// import 'dart:async';
// import 'dart:html';
import 'login.dart';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

// import 'package:barcode_scan/barcode_scan.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(new MaterialApp(
    home: LoginPage(),
    theme: new ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
        accentColor: Colors.teal),
  ));
}
