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
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 20,
                color: Colors.red,
              ),
              Container(
                width: 200,
                height: 20,
                color: Colors.red,
              ),
              Container(
                width: 200,
                height: 20,
                color: const Color.fromARGB(232, 255, 255, 255),
              ),
              Container(
                width: 100,
                height: 20,
                color: const Color.fromARGB(232, 255, 255, 255),
              )
            ],
          )),
    );
  }
}
