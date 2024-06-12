import 'package:eproject/home.dart';
import 'package:eproject/stack_registeration.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';



class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool isHide = true;
  final  TextEditingController name = TextEditingController();
 final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  void login()async{
    var userID = const Uuid().v1();
    try{
      await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email.text, password: password.text);
      await FirebaseFirestore.instance.collection("userData").doc(userID).set({
        "ID": userID,
        "name": name.text,
        "email": email.text,
        "pass": password.text,

      });
    }
    catch(e){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("$e")));

    }
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [


          Container(
            decoration: BoxDecoration(
              image: DecorationImage(

                image: NetworkImage("https://images.unsplash.com/photo-1499678329028-101435549a4e?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Login form
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Center(

                child: SingleChildScrollView(
                  child: Column(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                        Text("Welcome Back!",style: TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),),
                      SizedBox(height: 20),

                      SizedBox(height: 20),
                      TextField(
                        controller: email,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(color: Colors.white),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          prefixIcon: Icon(Icons.email, color: Colors.white),
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        obscureText: isHide == true? true: false,
                        obscuringCharacter: '-',
                        controller: password,

                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(color: Colors.white),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          prefixIcon: Icon(Icons.lock, color: Colors.white),
                          suffixIcon: IconButton(onPressed: (){
                            setState((){
                              isHide = ! isHide;
                            });
                          },icon: isHide == true ? const Icon(Icons.remove_red_eye, color: Colors.white): const Icon(Icons.panorama_fish_eye, color: Colors.white)),
                          ),
                          style: TextStyle(color: Colors.white),
                        ),

                      SizedBox(height: 30,),

                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()),);
                          login();
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 120, vertical: 18),
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                          textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color:  Colors.black
                          ),
                        ),
                        child: Text('Login'),
                      ),


                    ],
                  ),
                ),
                            ),
                          ),
              ),
        ],
      ),
    );
  }
}


