import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();
final randomizer2 = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = randomizer.nextInt(6) + 1;
  var currentDiceRoll2 = randomizer2.nextInt(6) + 1;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
      currentDiceRoll2 = randomizer2.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(children: [
          Expanded(
            child: Image.asset(
              'assets/images/dice-$currentDiceRoll.png',
              width: 200,
            ),
          ),
          Expanded(
            child: Image.asset(
              'assets/images/dice-$currentDiceRoll2.png',
              width: 200,
            ),
          ),
        ]),
        const SizedBox(
          height: 40,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
