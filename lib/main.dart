import 'package:flutter/material.dart';
import 'package:dice_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: [
            Color.fromARGB(255, 153, 17, 216),
            Color.fromARGB(255, 8, 75, 129)
          ],
        ),
      ),
    ),
  );
}
