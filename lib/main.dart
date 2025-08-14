import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

String? title = "flutter";

//* stateful : can refresh
// * stateless: can't refresh

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // * more like navbaaaar
      appBar: AppBar(title: Text(title!), centerTitle: true),
      body: currentIndex == 0
          ? Center(child: Text("1"))
          : Center(child: Text('2')),
      // * bottom navbaaaaaaar
      bottomNavigationBar: NavigationBar(
        // * where should the icons be
        destinations: [
          NavigationDestination(icon: Icon(Icons.person), label: "Person"),
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
        ],
        onDestinationSelected: (int value) {
          setState(() {
            currentIndex = value;
          });
        },
        // * default selected
        selectedIndex: currentIndex,
      ),
    );
  }
}
