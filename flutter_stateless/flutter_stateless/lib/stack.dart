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
          body: Stack(
            children: [
              Container(
                width: 400,
                height: 400,
                color: Colors.black,
              ),
              Container(
                width: 300,
                height: 300,
                color: Colors.white,
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.black,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.white,
              )
            ],
          )),
    );
  }
}
