import 'package:dzcoins/core/color_app.dart';
import 'package:dzcoins/widgets/back_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MarketScren extends StatefulWidget {
  const MarketScren({super.key});

  @override
  State<MarketScren> createState() => _MarketScrenState();
}

class _MarketScrenState extends State<MarketScren>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  int isOpen = 0;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      setState(() {});
    });
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
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Container(
            color: green,
          )),
          Positioned.fill(
              top: size.height * 0.17,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 400),
                decoration: BoxDecoration(
                  color: w,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                  
                  ],
                ),
              )),
          const CustomeBackBotton(),
          Positioned(
            top: size.height * 0.08,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                'shop'.tr,
                style: TextStyle(
                  fontSize: size.width * 0.07,
                  color: w,
                  fontFamily: 'TextaHeavy',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
