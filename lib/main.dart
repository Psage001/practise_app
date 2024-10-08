import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientConatainer(),
      ),
    ),
  );
}


class GradientConatainer extends StatelessWidget{
 const GradientConatainer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: const BoxDecoration(
              gradient:
                  LinearGradient(colors: [Color.fromARGB(221, 147, 6, 6),
                   Color.fromARGB(255, 226, 10, 10)],
                   begin: Alignment.topLeft,
                   end: Alignment.bottomRight,
                   )),
          child: const Center(
            child: Text('timmy', style: TextStyle(fontSize: 20.0, color: Colors.amberAccent, fontWeight: FontWeight.bold  ), ),
          ),
        );
  }
}