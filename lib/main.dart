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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BTOM(),
    );
  }
}
int currentIndex = 0;

void pageShifter(index) {
  setState(() {
    currentIndex = index;
  });
}

void setState(Null Function() param0) {
}

List<Widget> myScreens = [
  HomeScreen(),
  CitySelection(),
  AttractionList(),
  RegisterPage(),

];


class BTOM extends StatefulWidget {

  const BTOM({super.key});

  @override
  State<BTOM> createState() => _BTOMState();
}

class _BTOMState extends State<BTOM> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myScreens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          currentIndex: currentIndex,
          onTap: pageShifter,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.location_on_outlined),label: "location"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "favorite"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
          ]
      ),
    );
  }
}
