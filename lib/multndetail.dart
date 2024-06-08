import 'package:flutter/material.dart';

class multn_detail extends StatefulWidget {
  const multn_detail({super.key});

  @override
  State<multn_detail> createState() => _multn_detailState();
}

class _multn_detailState extends State<multn_detail> {
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

            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30,left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Lahore, the capital city of Punjab in Pakistan', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: 350,
                        child: Divider(
                          color: Colors.grey,
                          thickness: 2,
                        ),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Container(
                        width: 350,
                        height: 200,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          image: DecorationImage(image:
                              NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHxMory90m2BDF0Z5uFCYmk1rwQqQ2IioChA&s")
                          ),
                        ),


                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Description:",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 17),),
                          Text("The mausoleum of the Sufi saint Bahauddin Zakariya, built in the 13th century.Architectural Significance Known for its impressive architecture featuring blue tiles and intricate patterns."),
                        ],
                      ),

                      SizedBox(
                        height: 18,
                      ),
                      Container(
                        width: 350,
                        height: 200,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          image: DecorationImage(image:
                              NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIKgVTZLInxb2ylxyBurOqIbTYyIWN2JdjFA&s")
                          ),
                        ),


                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Description:",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 17),),
                          Text("An ancient fort with a history dating back to the early centuries AD, though it has been rebuilt several times.")
                        ],
                      ),

                      SizedBox(
                        height: 18,
                      ),
                      Container(
                        width: 350,
                        height: 200,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          image: DecorationImage(image:
                              NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBaDEKaegYjyGVOO5kOHjhGoioov7-cjl-lA&s")
                          ),
                        ),


                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Description:",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 17),),
                          Text(" A historic mosque built in the 18th century by Nawab Shuja Khan.Features beautiful architecture with multiple domes and minarets.")
                        ],
                      ),

                      SizedBox(
                        height: 18,
                      ),
                      Container(
                        width: 350,
                        height: 200,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          image: DecorationImage(image:
                              NetworkImage("data:image/jpeg;base64,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")
                          ),
                        ),


                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Description:",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 17),),
                          Text(" The mausoleum of another renowned Sufi saint, Shah Shams Sabzwari Known for its distinctive blue tile work and beautiful calligraphy")
                        ],
                      ),

                      SizedBox(
                        height: 18,
                      ),
                      Container(
                        width: 350,
                        height: 200,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          image: DecorationImage(image:
                              NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDBhCu3jlC7g5t7SHAitsU85a5yWiM8x08XQ&s")
                          ),
                        ),


                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Description:",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 17),),
                          Text("A historic garden located near the Multan Fort.A popular spot for picnics and leisurely walks.")
                        ],
                      ),

                    ],
                  ),
                ),





              ],
            ),
          ),
        )
    );
  }
}
