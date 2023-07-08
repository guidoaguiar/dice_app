import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-1.png';

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        ElevatedButton(
          onPressed: () {
            var diceRoll = Random().nextInt(6) + 1;
            setState(() {
              activeDiceImage = 'assets/images/dice-$diceRoll.png';
              print('Button pressed');
            });
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              const Color.fromARGB(255, 125, 12, 148),
            ),
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
