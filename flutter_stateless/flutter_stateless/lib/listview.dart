import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("My App"),
          ),
          body: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                width: 300,
                height: 300,
                color: Colors.black,
              ),
              Container(
                width: 300,
                height: 300,
                color: Colors.white,
              ),
              Container(
                width: 300,
                height: 300,
                color: Colors.black,
              ),
              Container(
                width: 300,
                height: 300,
                color: Colors.white,
              )
            ],
          )),
    );
  }
}
