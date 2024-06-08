import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {

  final TextEditingController email = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/profile_pic.jpg'),
            ),
            SizedBox(height: 20),

            TextField(
              controller: email,
              decoration: InputDecoration(
                labelText: 'Name ',
                labelStyle: TextStyle(color: Colors.black),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                prefixIcon: Icon(Icons.person, color: Colors.black),
              ),
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(height: 20),

            TextField(
              controller: email,
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(color: Colors.black),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                prefixIcon: Icon(Icons.email, color: Colors.black),
              ),
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(height: 30),
            ElevatedButton(

              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Profile updated successfully')),
                );
              },

              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 18),
                primary: Colors.grey.withOpacity(0.5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
                textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color:  Colors.white,
                ),
              ),
              child: Text('Save Profile'),
            ),
          ],
        ),
      ),
    );
  }
}




