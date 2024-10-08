import 'package:flutter/material.dart';

class CenterText extends StatelessWidget {
  const CenterText(this.text , {super.key});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 20.0,
          color: Colors.amberAccent,
          fontWeight: FontWeight.bold
      ),
    );
  }
}
