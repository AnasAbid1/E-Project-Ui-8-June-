import 'package:eproject/atrct_list.dart';
import 'package:eproject/places_screen.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
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

  int currentIndex = 0;

  void pageShifter(index){
    setState(() {
      currentIndex = index;
    });
  }

  List<Widget> myScreens = [
    HomeScreen(),
    AttractionList()

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("Cities Places",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.white,
      ) ,
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
                margin: EdgeInsets.only(left: 14,top: 14),
                child: Text("Cites Around World",style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),)),

            SizedBox(height: 20,),

            Stack(
              children:
              [

              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                width: double.infinity,
                height: 130,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade400,
                      spreadRadius: 1,
                      blurRadius: 5,
                    )
                  ],
                ),
              ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10,horizontal: 30),
                  width: 120,
                  height: 110,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("images/kchi.jpg")),

                  ),),

                Positioned(
                  top: 30,
                  left: 160,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Karachi",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                      Text("Pakistan",style: TextStyle(fontSize: 12),),
                      Text("Population: 16 million ",style: TextStyle(fontSize: 12),),

                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => GridScreen()),
                            );
                            },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white.withOpacity(0.2),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                          child: Text("view"))

                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 20,),

            Stack(
              children:
              [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  width: double.infinity,
                  height: 130,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400,
                        spreadRadius: 1,
                        blurRadius: 5,
                      )
                    ],
                  ),

                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10,horizontal: 30),
                  width: 120,
                  height: 110,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("images/isl.jpg"))
                  ),

                ),

                Positioned(
                  top: 30,
                  left: 160,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Islamabad",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                      Text("Pakistan",style: TextStyle(fontSize: 12),),
                      Text("Population: 1.2 million ",style: TextStyle(fontSize: 12),),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) => IslGrid()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white.withOpacity(0.2),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                          child: Text("view"))

                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 20,),
            Stack(
              children:
              [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  width: double.infinity,
                  height: 130,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400,
                        spreadRadius: 1,
                        blurRadius: 5,
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10,horizontal: 30),
                  width: 120,
                  height: 110,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("images/lhr.jpg"))
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 160,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Lahore",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                      Text("Pakistan",style: TextStyle(fontSize: 12),),
                      Text("Population: 13 million ",style: TextStyle(fontSize: 12),),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) => LhrGrid()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white.withOpacity(0.2),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                          child: Text("view"))

                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 20,),
            Stack(
              children:
              [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  width: double.infinity,
                  height: 130,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400,
                        spreadRadius: 1,
                        blurRadius: 5,
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10,horizontal: 30),
                  width: 120,
                  height: 110,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("images/multan.jpg"))
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 160,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Multan",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                      Text("Pakistan",style: TextStyle(fontSize: 12),),
                      Text("Population: 2 million ",style: TextStyle(fontSize: 12),),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) => MultnGrid()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white.withOpacity(0.2),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                          child: Text("view"))

                    ],
                  ),
                ),
              ],
            ),


          ],
        ),
      ),


    
      bottomNavigationBar: BottomNavigationBar(

          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          currentIndex: currentIndex,
          onTap: pageShifter,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Atrctive Place"),
          ]
      ),
    );
  }
}



