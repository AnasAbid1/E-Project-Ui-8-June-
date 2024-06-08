import 'package:eproject/firebase_options.dart';
import 'package:eproject/home.dart';
import 'package:eproject/login_screen.dart';
import 'package:eproject/places_screen.dart';
import 'package:eproject/pop_place.dart';
import 'package:eproject/user_rev.dart';
import 'package:eproject/userprofile.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:eproject/stack_registeration.dart';
import 'atrct_list.dart';

import 'cityselection.dart';
import 'isl_screen.dart';
import 'lhr_screen.dart';


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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AttractionDetailScreen()
    );

  }
}
class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Spash Screen"),
      ),
    );
  }
}

