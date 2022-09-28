import 'package:firebase_core/firebase_core.dart';
import 'package:first_shopeproject/spleshsp.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(),
    home: SplashScreen6(),
  ));
}