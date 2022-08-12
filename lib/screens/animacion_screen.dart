import 'dart:math';

import 'package:flutter/material.dart';

class AnimacionScreen extends StatefulWidget {
  const AnimacionScreen({Key? key}) : super(key: key);

  @override
  State<AnimacionScreen> createState() => _AnimacionScreenState();
}

class _AnimacionScreenState extends State<AnimacionScreen> {
  double _width = 50;
  double _heigth = 50;
  Color _color = Colors.cyan;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  void changeShape() {
    final ramdom = Random();
    _width = ramdom.nextInt(300).toDouble() + 70;
    _heigth = ramdom.nextInt(300).toDouble() + 70;
    _color = Color.fromRGBO(
        ramdom.nextInt(250), ramdom.nextInt(250), ramdom.nextInt(250), 1);
    _borderRadius = BorderRadius.circular(ramdom.nextInt(100).toDouble() + 10);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Container"),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeOutCubic,
          width: _width,
          height: _heigth,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.play_circle_outline, size: 35),
          onPressed: changeShape),
    );
  }
}
