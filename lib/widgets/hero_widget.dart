import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "hero1",
      child: ClipRRect(
        child: Image.asset("assets/images/image.jpg"),
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }
}
