import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class EnableLocation extends StatefulWidget {
  const EnableLocation({super.key});

  @override
  State<EnableLocation> createState() => _EnableLocationState();
}

class _EnableLocationState extends State<EnableLocation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

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
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        color: Colors.white,
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            const Expanded(child: SizedBox()),
            Expanded(
                flex: 2,
                child: LottieBuilder.asset("assets/loties/location.json")),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    "location_title".tr,
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "location_des".tr,
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          fontSize: 15),
                    ),
                  ),
                  const Text(
                    "Dzmovement",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                        fontSize: 15),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
