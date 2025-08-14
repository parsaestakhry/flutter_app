import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


String? title = "flutter";
// material

//scaffold: skeleton of the app
// stateless: state will not change in the screen

//* main structure of the application
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // * debug banner off
      debugShowCheckedModeBanner: false,
      // * theme of the application
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.dark,
        ),
      ),
      //* skeleton of the application
      home: Scaffold(
        // * more like navbaaaar
        appBar: AppBar(title: Text(title!), centerTitle: true),

        // * bottom navbaaaaaaar
        bottomNavigationBar: NavigationBar(
          // * where should the icons be
          destinations: [
            NavigationDestination(icon: Icon(Icons.person), label: "Person"),
            NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          ],
          // * default selected
          selectedIndex: 1,
        ),
      ),
    );
  }
}
