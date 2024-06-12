import 'package:eproject/atrct_list.dart';
import 'package:eproject/cityselection.dart';
import 'package:eproject/login_screen.dart';
import 'package:eproject/places_screen.dart';
import 'package:eproject/stack_registeration.dart';
import 'package:eproject/user_rev.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'isl_screen.dart';
import 'lhr_screen.dart';
import 'mltn_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List colors = [Colors.red, Colors.orange, Colors.green, Colors.black];
  List images = [
      "https://media.istockphoto.com/id/2147624389/photo/city-skyline.jpg?s=612x612&w=0&k=20&c=lyjuVILM6pD3QD75SP83k_H1-Wf5IoK8M-IuYuAPOHE=",
      "https://media.istockphoto.com/id/539346285/photo/wazir-khan-mosque-lahore-pakistan.jpg?s=612x612&w=0&k=20&c=WST8YlHKVkceJvEqgUYXW5zPZ5_HVPjKfd53vzrmOIM=",
      "https://media.istockphoto.com/id/519767045/photo/shah-faisal-mosque-islamabad-pakistan.jpg?s=612x612&w=0&k=20&c=YOdDSuvmaLxQUaOMlrv58-NnqWqqlNju-w3PiaT_FuY=",
      "https://media.istockphoto.com/id/1418184441/photo/istanbul-turkey-hagia-sophia.jpg?s=612x612&w=0&k=20&c=5UA-YcM-lMuU7IXhpiP8F5Bkfkhd-_gTwRfKP1RL-xg=",
      "https://media.istockphoto.com/id/496236389/photo/islamia-college-peshawar-pakistan.jpg?s=612x612&w=0&k=20&c=2ReaulzTNf0jXdqyxQy2wuwh7bjBvM9_JhvQO0I1xAo=",
      "https://media.istockphoto.com/id/2153214164/photo/mausoleum-of-shah-rukn-e-alam-multan-pakistan-a-testament-to-sufi-spirituality.jpg?s=612x612&w=0&k=20&c=geb2E2Si0fmcpqvhSx2UJAFyCrSL5voAFDbHvjfNa9I=",
  ];



  @override
  void initState() {
    super.initState();
    _checkAndShowPopup();
  }
  Future<void> _checkAndShowPopup() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool hasSeenPopup = prefs.getBool('hasSeenPopup') ?? false;

    if (!hasSeenPopup) {
      await Future.delayed(Duration(seconds: 2));
      _showPopup(context, 'Welcome to our website!', 'You have pressed the Login n Register');
      prefs.setBool('hasSeenPopup', true);
    }
  }

  void _showPopup(BuildContext context, String title, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          title: Text("Welcome to Cities!",style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold),
          ),

          actions: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.orange,
                    Colors.deepOrange,
                    Colors.orangeAccent,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: TextButton(
                onPressed:  () {

                      Navigator.push(context,MaterialPageRoute(builder: (context) => LoginPage()),
                      );},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.transparent, // Ensure the button itself is transparent
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                ),
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.orange,
                    Colors.deepOrange,
                    Colors.orangeAccent,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: TextButton(
                onPressed:  () {

                  Navigator.push(context,MaterialPageRoute(builder: (context) => RegisterPage()),
                  );},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.transparent, // Ensure the button itself is transparent
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                ),
                child: Text(
                  'Register',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],

        ),

      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Carousel Slider
            CarouselSlider(
                items: List.generate(images.length, (index) => Container(
                  width: double.infinity,
                  height: 140,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                  decoration: BoxDecoration(

                      color: Colors.grey.shade300,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage("${images[index]}")),

                  ),
                )),
                options: CarouselOptions(
                  autoPlay: true,
                  scrollDirection: Axis.horizontal,
                  scrollPhysics: ScrollPhysics(),
                  autoPlayInterval: Duration(milliseconds: 2000),
                  viewportFraction: 1.0,
                )),

            Container(
                margin: EdgeInsets.only(left: 14,top: 5),
                child: Text("Chose how you want spend time!",style: TextStyle(fontSize: 15,color: Colors.grey),)
            ),

            //container one//
            Center(
              child: GestureDetector(
                onTap: () {
                  // Navigate to another page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CitySelection()),
                  );
                },
              child: Container(

                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                width: double.infinity,
                height: 160,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Colors.grey,
                ),
                child: Stack(
                  children: [
                    Opacity(
                      opacity: 0.7,  // Yahan image ki opacity set karein
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          image: DecorationImage(
                            image: NetworkImage(
                              'https://media.istockphoto.com/id/1754985417/photo/london-city-aerial-view-with-tower-bridge-and-full-moon-at-night-in-uk.jpg?s=612x612&w=0&k=20&c=iuFQWoL6RM04FNYp4uC6v_HRnpJ--5XekA-jjoVbFPY='
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        "City Selection",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ),

            //container two//
            Center(
              child: GestureDetector(
                onTap: () {
                  // Navigate to another page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AttractionList()),
                  );
                },
                child: Container(

                  margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  width: double.infinity,
                  height: 160,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.grey,
                  ),
                  child: Stack(
                    children: [
                      Opacity(
                        opacity: 0.7,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            image: DecorationImage(
                              image: NetworkImage(
                                'https://media.istockphoto.com/id/2087050917/photo/gondola-station-at-night-venice.jpg?s=612x612&w=0&k=20&c=olyCWAFg5TI0XDAtI_74po84BlCEeb_AijyCZw5XZGg='

                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          "Attraction Listings",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            //container three//
            Center(
              child: GestureDetector(
                onTap: () {
                  // Navigate to another page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GridScreen()),
                  );
                },
                child: Container(

                  margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  width: double.infinity,
                  height: 160,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.grey,
                  ),
                  child: Stack(
                    children: [
                      Opacity(
                        opacity: 0.7,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            image: DecorationImage(
                              image: NetworkImage(
                                'https://media.istockphoto.com/id/1442149024/photo/gps-navigation-pins-background.jpg?s=612x612&w=0&k=20&c=GNvjklH0z_5QRqilqE4i64H-uwH-V-_IJtKILhV45mE='
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          "Maps and Directions",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),


            //container four//
            Center(
              child: GestureDetector(
                onTap: () {
                  // Navigate to another page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AttractionDetailScreen()),
                  );
                },
                child: Container(

                  margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  width: double.infinity,
                  height: 160,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.grey,
                  ),
                  child: Stack(
                    children: [
                      Opacity(
                        opacity: 0.7,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            image: DecorationImage(
                              image: NetworkImage(
                                'https://media.istockphoto.com/id/1018901104/photo/computer-crime-concept.jpg?s=612x612&w=0&k=20&c=HMmwEC4waC-N5k6-WD2fPPkoWyA2bifsB4LtSkkIThQ='
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          "User Reviews n Rating",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



