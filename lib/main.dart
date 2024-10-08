import 'package:flutter/material.dart';
import 'package:practise_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(Color.fromARGB(249, 229, 8, 8), Colors.blueAccent),
      ),
    ),
  );
}

