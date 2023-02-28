import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 150;
  double _height = 100;
  double _radius = 20;
  Color _color = Colors.deepPurple;
  void onPress() {
    final random = Random();
    _width = random.nextInt(400).toDouble() + 20;
    _height = random.nextInt(400).toDouble() + 20;
    _color = Color.fromRGBO(
        random.nextInt(255), random.nextInt(255), random.nextInt(255), 100);
    _radius = random.nextInt(100).toDouble();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Animated Container')),
        body: Center(
          child: AnimatedContainer(
            curve: Curves.easeInOutBack,
            duration: const Duration(milliseconds: 2000),
            width: _width,
            height: _height,
            decoration: BoxDecoration(
                color: _color, borderRadius: BorderRadius.circular(_radius)),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: onPress,
          child: const Icon(Icons.play_circle_outline, size: 45),
        ));
  }
}
