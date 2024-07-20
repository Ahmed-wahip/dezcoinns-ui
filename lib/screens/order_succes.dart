import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../core/color_app.dart';

class SuccesPayment extends StatelessWidget {
  const SuccesPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        foregroundColor: b,
      ),
      body: Column(
        children: [
          Lottie.asset('assets/gif/y.json'),
          Text(
            'processing'.tr,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "Ubuntuitalic",
                color: Colors.black),
          ),
          const SizedBox(
            height: 5,
          ),
          Text('congratulation'.tr,
              style: const TextStyle(
                  fontWeight: FontWeight.w300, fontFamily: "Ubuntuitalic")),
        ],
      ),
    );
  }
}
