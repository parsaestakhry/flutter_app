import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
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
        appBar: AppBar(title: Text("Flutter App"), centerTitle: true),
        drawer: Drawer(
          child: Column(
            children: [
              DrawerHeader(child: Text("drawer")),
              ListTile(title: Text("Logout")),
            ],
          ),
        ),
        // * float buttons
        floatingActionButton: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(
              onPressed: () {
                print("button clicked");
              },
              // * icon for the button
              child: Icon(Icons.add),
            ),
            //* space between the buttons
            SizedBox(height: 10.0),
            FloatingActionButton(
              onPressed: () {
                print("button clicked");
              },
              child: Icon(Icons.add),
            ),
          ],
        ),
        // * bottom navbaaaaaaar
        bottomNavigationBar: NavigationBar(
          // * where should the icons be
          destinations: [
            NavigationDestination(icon: Icon(Icons.person), label: "Person"),
            NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          ],
          // * onclick function
          onDestinationSelected: (int value) {
            print(value);
          },
          // * default selected
          selectedIndex: 1,
        ),
      ),
    );
  }
}
