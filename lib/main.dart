import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:time_table/home.dart';
import 'package:time_table/phone.dart';
import 'package:time_table/verify.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    initialRoute: 'phone',
    debugShowCheckedModeBanner: false,
    routes: {
      'phone': (context) => MyPhone(),
      'verify': (context) => MyVerify(),
      'home': (context) => MyHome(),
    },
  ));
}
