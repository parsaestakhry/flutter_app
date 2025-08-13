import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
// material

//scaffold: skeleton of the app
// stateless: state will not change in the screen
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.dark,
        ),
      ),
      home: Scaffold(
        // * more like navbaaaar
        appBar: AppBar(
          title: Text("Flutter App"),
          centerTitle: true,

          leading: Icon(Icons.login),
          actions: [Text("helloooo")],
          backgroundColor: Colors.teal,
        ),
      ),
    );
  }
}
