// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ChininAnimation extends StatefulWidget {
  Widget child;
  ChininAnimation({super.key, required this.child});

  @override
  State<ChininAnimation> createState() => _ChininAnimationState();
}

class _ChininAnimationState extends State<ChininAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    controller = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this)
      ..addListener(() => setState(() {}))
      ..repeat(reverse: true, min: 0.7, max: 0.9);

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        final scale = controller.value * 0.2 + 0.8;
        return Transform.scale(
          scale: scale,
          child: widget.child,
        );
      },
    );
  }
}
