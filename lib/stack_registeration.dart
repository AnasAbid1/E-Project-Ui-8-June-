import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  
  bool isHide= true;

  final TextEditingController _username = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _Age = TextEditingController();
  final TextEditingController _gender = TextEditingController();

  void _Reg() {
    final String username = _username.text;
    final String email = _email.text;
    final String password = _pass.text;


    print('Username: $username');
    print('Email: $email');
    print('Password: $password');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor:  Colors.grey.withOpacity(0.2),
        title: Center(child: const Text("Registeration Screen")),
      ),

      backgroundColor:  Colors.grey.withOpacity(0.5),

      body: Stack(

        children: [


          Container(
            margin: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
            width: double.infinity,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Colors.white,
              image: DecorationImage(image: NetworkImage('https://media.istockphoto.com/id/2091238757/photo/3d-illustration-of-vienna-city-and-mass-buildings.webp?b=1&s=170667a&w=0&k=20&c=lOXQsZKPxcoYsX3_T74TywybjY1LjAApa9V6Wfws2Yo='),
                fit: BoxFit.cover,
              )

            ),
          ),
          Positioned(
            left: 140,
            top: 80,
            child: CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('data:image/png;base64,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'),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(

                child: SingleChildScrollView(
                  child: Column(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [



                      SizedBox(height: 160),
                      TextField(

                        controller: _username,

                        decoration: InputDecoration(
                          labelText: 'Username',
                          labelStyle: TextStyle(color: Colors.white),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: UnderlineInputBorder(

                            borderSide: BorderSide(color: Colors.white),
                          ),
                          prefixIcon: Icon(Icons.person, color: Colors.white),
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        controller: _email,
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
                      SizedBox(height: 10),
                      TextField(
                        obscureText:isHide == true? true: false,
                        obscuringCharacter: '-',
                        controller: _pass,
                        
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(color: Colors.white),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          prefixIcon: const  Icon(Icons.lock, color: Colors.white),
                         suffixIcon:   IconButton(onPressed: (){
                           setState((){
                             isHide = ! isHide;
                           });
                         },icon: isHide == true ? const Icon(Icons.remove_red_eye, color: Colors.white): const Icon(Icons.panorama_fish_eye, color: Colors.white))
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 10),


                      TextField(

                        controller: _Age,
                        decoration: InputDecoration(
                          labelText: 'Age',
                          labelStyle: TextStyle(color: Colors.white),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: UnderlineInputBorder(

                            borderSide: BorderSide(color: Colors.white),
                          ),
                          prefixIcon: Icon(Icons.person, color: Colors.white),
                        ),
                        style: TextStyle(color: Colors.white),
                      ),

                      SizedBox(height: 10),
                      TextField(

                        controller: _gender,
                        decoration: InputDecoration(
                          labelText: 'Gender',
                          labelStyle: TextStyle(color: Colors.white),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: UnderlineInputBorder(

                            borderSide: BorderSide(color: Colors.white),
                          ),
                          prefixIcon: Icon(Icons.person, color: Colors.white),
                        ),
                        style: TextStyle(color: Colors.white),
                      ),

                      SizedBox(height: 25,),

                      ElevatedButton(
                        onPressed: _Reg,
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
                        child: Text('Register'),
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
