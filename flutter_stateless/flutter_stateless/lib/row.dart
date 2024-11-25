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
          body: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 200,
                color: Colors.red,
              ),
              Container(
                width: 50,
                height: 200,
                color: Colors.red,
              ),
              Container(
                width: 50,
                height: 200,
                color: Colors.blue,
              ),
              Container(
                width: 50,
                height: 200,
                color: Colors.blue,
              )
            ],
          )),
    );
  }
}
