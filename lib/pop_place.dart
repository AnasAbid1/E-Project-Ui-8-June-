import 'package:flutter/material.dart';

class fams_screen extends StatefulWidget {
  const fams_screen({super.key});

  @override
  State<fams_screen> createState() => _fams_screenState();
}

class _fams_screenState extends State<fams_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      
       
        
      body: Container(
        margin: EdgeInsets.only(left: 14,top: 30),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Text("City"),
            Text("City With Popular Places"),
            SizedBox(
              width: 370,
              child: Divider(
                color: Colors.grey,
                thickness: 2,
              ),
            ),

        Container(
          margin: const EdgeInsets.symmetric(horizontal: 4,vertical: 4),
          width: 360,
          height: 200,
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(14),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(""))
          ),
        ),
            Container(
              margin: EdgeInsets.only(top: 300),
              child: Text("description"),
            )



          ]

        ),
      ),
    );
  }
}
