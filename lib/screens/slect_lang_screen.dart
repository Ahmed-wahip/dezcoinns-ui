import 'package:dzcoins/core/color_app.dart';
import 'package:dzcoins/core/service.dart';
import 'package:dzcoins/routes/pushto.dart';
import 'package:dzcoins/screens/login_screen.dart';
import 'package:dzcoins/widgets/chose_lang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SlectLangScreen extends StatefulWidget {
  const SlectLangScreen({super.key});

  @override
  State<SlectLangScreen> createState() => _SlectLangScreenState();
}

class _SlectLangScreenState extends State<SlectLangScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  ServiceApp myservice = Get.find();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const ChoseLan(),
              const SizedBox(
                width: 20,
              ),
              Text(
                'languages'.tr,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: green,
        onPressed: () {
          pushTo(context, const LoginScreen());
        },
        label: Text(
          'save'.tr,
          style: TextStyle(color: w, fontFamily: 'Lato'),
        ),
      ),
    );
  }
}
