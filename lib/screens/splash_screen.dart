import 'package:dzcoins/core/service.dart';
import 'package:dzcoins/screens/login_screen.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplshScreen extends StatefulWidget {
  const SplshScreen({super.key});

  @override
  State<SplshScreen> createState() => _SplshScreenState();
}

class _SplshScreenState extends State<SplshScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  ServiceApp myservice = Get.find();

  void listener() {
    if (controller.isCompleted) {
      Future.delayed(const Duration(milliseconds: 2000), () {
        Navigator.pushAndRemoveUntil(context, PageRouteBuilder<Offset>(
            pageBuilder: (context, animation, secondaryAnimation) {
          const begin = Offset(1.0, 0.0);
          const end = Offset.zero;
          final tween = Tween(begin: begin * 2, end: end);
          final offsetAnimation = animation.drive(tween);
          return SlideTransition(
              position: offsetAnimation, child: const LoginScreen());
        }), (route) => false);
      });
    }
    setState(() {});
  }

  @override
  void initState() {
    controller = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this)
      ..addListener(() => listener());

    controller.forward(from: 0.0);

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Transform(
        alignment: Alignment.bottomCenter,
        transform: Matrix4.identity()..scale(controller.value),
        child: Image.asset(
          "assets/gif/logo.gif",
        ),
      ),
    ));
  }
}
