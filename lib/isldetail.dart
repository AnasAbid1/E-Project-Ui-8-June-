import 'package:flutter/material.dart';

class isl_detail extends StatefulWidget {
  const isl_detail({super.key});

  @override
  State<isl_detail> createState() => _isl_detailState();
}

class _isl_detailState extends State<isl_detail> {
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
                      Text('Islamabad the capital city of Pakistan', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
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
                              NetworkImage("data:image/jpeg;base64,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")
                          ),
                        ),


                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Description:",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 17),),
                          Text(" The largest mosque in Pakistan and one of the largest in the world. It is an iconic symbol of Islamabad, designed by Turkish architect Vedat Dalokay.")
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
                              NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZSCOXSZm5Zs2dWcIg3d4tQwq666zFI39ESA&s")
                          ),
                        ),


                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Description:",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 17),),
                          Text(" A national monument symbolizing the unity of Pakistani people. The design represents the four provinces and three territories of Pakistan.")
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
                              NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_6b5iCukwLLSA6WNYBvo-yKfnpaQNgqo5mw&s")
                          ),
                        ),


                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Description:",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 17),),
                          Text("A viewpoint in the Margalla Hills that offers a panoramic view of Islamaba Popular for picnics and photography. Visitors can see the entire city, including the Faisal Mosque and Rawal Lake.")
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
                              NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcHSn-AdtJyz2zDlGdvwsNCXyhE09229ox8g&s")
                          ),
                        ),


                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Description:",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 17),),
                          Text("A museum showcasing Pakistan's cultural heritage and traditions. It includes exhibits on the lifestyles, artifacts, and musical instruments of various ethnic groups")
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
                              NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTI8ll4T8bfqlNFBJNLx8Si4ummEIr3B2Nuw&s")
                          ),
                        ),


                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Description:",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 17),),
                          Text("A historic village located at the foothills of the Margalla Hills. It has been restored and converted into a cultural heritage site.")
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
