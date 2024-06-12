import 'package:eproject/isldetail.dart';
import 'package:eproject/lhrdetail.dart';
import 'package:eproject/multndetail.dart';
import 'package:eproject/places_screen.dart';
import 'package:eproject/qtadetail.dart';
import 'package:flutter/material.dart';

import 'package:eproject/kchidetail.dart';

class CitySelection extends StatefulWidget {
  const CitySelection({super.key});

  @override
  State<CitySelection> createState() => _CitySelectionState();
}

class _CitySelectionState extends State<CitySelection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'Searching',
                  labelStyle: TextStyle(color: Colors.grey),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  prefixIcon: Icon(Icons.location_on_outlined, color: Colors.grey),
                ),
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(height: 15,),
              
              Text("Popluar Loctions",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),

              SizedBox(height: 15,),

              Container(

                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => kchi_detail()),
                    );
                  },

                  child: Column(
                    children: [
                      Text('Karachi', style: TextStyle(fontSize: 18,),),
                      Text('Sindh', style: TextStyle(fontSize: 12, color: Colors.grey),),
                    ],
                  ),

                ),
        
              ),
        
              Container(
                margin: EdgeInsets.only(top: 30),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => isl_detail()),
                    );
                  },
                  child: Column(
                    children: [
                      Text('Islamabad', style: TextStyle(fontSize: 18,),),
                      Text('Punjab', style: TextStyle(fontSize: 12, color: Colors.grey),),
                    ],
                  ),
                ),
        
              ),
        
              Container(
                margin: EdgeInsets.only(top: 30),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => lhr_detail()),
                    );
                  },
                  child: Column(
                    children: [
                      Text('Lahore', style: TextStyle(fontSize: 18,),),
                      Text('Punjab', style: TextStyle(fontSize: 12, color: Colors.grey),),
                    ],
                  ),
                ),
        
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => multn_detail()),
                    );
                  },
                  child: Column(
                    children: [
                      Text('Multan', style: TextStyle(fontSize: 18,),),
                      Text('Punjab', style: TextStyle(fontSize: 12, color: Colors.grey),),
                    ],
                  ),
                ),
        
              ),
        
              Container(
                margin: EdgeInsets.only(top: 30),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => qta_detail()),
                    );
                  },
                  child: Column(
                    children: [
                      Text('Quetta', style: TextStyle(fontSize: 18,),),
                      Text('KPK', style: TextStyle(fontSize: 12, color: Colors.grey),),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
