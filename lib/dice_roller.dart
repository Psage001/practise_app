import 'package:flutter/material.dart';
import 'dart:math';

 final randomizervalue = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-2.png';
 
  void rolldice() {
    var randomNumber = randomizervalue.nextInt(6) +1;
    setState(() {
      activeDiceImage = 'assets/images/dice-$randomNumber.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 300,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
            onPressed: rolldice,
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(20),
              foregroundColor: Colors.white,
              backgroundColor: const Color.fromARGB(137, 228, 7, 7),
              textStyle: const TextStyle(fontSize: 30),
            ),
            child: const Text('Roll dice')),
      ],
    );
  }
}
