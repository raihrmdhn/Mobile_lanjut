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
            title: Text("WhatsApp"),
          ),
          body: ListView(
            children: [
              ListTile(
                title: Text("Hafizh Fadhlurrohman"),
                subtitle: Text("Tes"),
                leading: CircleAvatar(),
                trailing: Text("10.00 PM"),
              ),
              ListTile(
                title: Text("Delon"),
                subtitle: Text("Omak"),
                leading: CircleAvatar(),
                trailing: Text("Kemarin"),
              ),
              ListTile(
                title: Text("Zani"),
                subtitle: Text("yo"),
                leading: CircleAvatar(),
                trailing: Text("20/8/2024"),
              )
            ],
          )),
    );
  }
}
