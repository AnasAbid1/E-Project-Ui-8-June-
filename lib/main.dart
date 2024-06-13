import 'package:eproject/firebase_options.dart';
import 'package:eproject/home.dart';
import 'package:eproject/login_screen.dart';
import 'package:eproject/places_screen.dart';

import 'package:eproject/user_rev.dart';
import 'package:eproject/userprofile.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:eproject/stack_registeration.dart';
import 'atrct_list.dart';

import 'cityselection.dart';



void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}









