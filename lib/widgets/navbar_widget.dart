import 'package:flutter/material.dart';

class NavbarWidget extends StatefulWidget {
  const NavbarWidget({super.key});

  @override
  State<NavbarWidget> createState() => _NavbarWidgetState();
}

class _NavbarWidgetState extends State<NavbarWidget> {
  int selectedValue = 0;
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
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
    );
  }
}
