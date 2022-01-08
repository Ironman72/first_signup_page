// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Space Explorer',
      home: Scaffold(
        backgroundColor: Colors.black87,
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WELCOME TO SPACE',
                        style: TextStyle(
                            color: Colors.yellow[600],
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            wordSpacing: 2.0,
                            letterSpacing: 2.0),
                      ),
                    ],
                  ),
                  Center(
                    child: Image.asset('images/main_page_image.png'),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  OutlinedButton(
                    onPressed: () {
                      print('Sign-in Button Pressed');
                    },
                    child: Text('Sign in'),
                    style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Colors.yellow, width: 2.0),
                        primary: Colors.amberAccent,
                        minimumSize: Size(200.0, 40.0)),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  TextButton(
                    onPressed: () {
                      print('Register Button Pressed');
                    },
                    child: Text('Register'),
                    style: TextButton.styleFrom(
                        primary: Colors.black87,
                        backgroundColor: Colors.yellow[700],
                        minimumSize: Size(200.0, 40.0)),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
