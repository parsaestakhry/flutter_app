import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedValue = 0;
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
        appBar: AppBar(title: Center(child: Text("Flutter App"))),
        bottomNavigationBar: NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.person), label: "Person"),
            NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          ],
          onDestinationSelected: (int value) {
            setState(() {
              selectedValue = value;
            });
          },
          selectedIndex: selectedValue,
        ),
      ),
    );
  }
}
