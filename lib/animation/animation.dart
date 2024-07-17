import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomeAnimation extends StatefulWidget {
  Widget child;
  int duration;
  CustomeAnimation({super.key, required this.child, required this.duration});

  @override
  State<CustomeAnimation> createState() => _CustomeAnimationState();
}

class _CustomeAnimationState extends State<CustomeAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  late Animation<double> animation;
  late Animation<double> animatedOpacity;
  double opacityValue = 0.0;

  @override
  void initState() {
    controller = AnimationController(
        duration: Duration(milliseconds: widget.duration), vsync: this)
      ..addListener(() => setState(() {}));

    animation = Tween(begin: -50.0, end: 0.0).animate(controller);
    animatedOpacity = Tween(begin: 0.4, end: 1.0).animate(controller);
    controller.forward(from: 0.0);
    opacityValue = controller.value;

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
      animation: CurvedAnimation(
        parent: ModalRoute.of(context)!.animation!,
        curve: Curves.easeInOut,
      ),
      builder: (context, child) {
        return Opacity(
          opacity: animatedOpacity.value,
          child: Transform.translate(
            offset: Offset(
              0.0,
              animation.value,
            ),
            child: widget.child,
          ),
        );
      },
    );
  }
}
