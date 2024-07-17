// ignore_for_file: must_be_immutable, unused_field

import 'package:dzcoins/animation/animation.dart';
import 'package:dzcoins/controllers/localization_controller.dart';
import 'package:dzcoins/widgets/chart_widget.dart';
import 'package:dzcoins/widgets/currenct_mining_widget.dart';
import 'package:dzcoins/widgets/invest_widget.dart';
import 'package:dzcoins/widgets/marke_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScren extends StatefulWidget {
  const HomeScren({super.key});

  @override
  State<HomeScren> createState() => _HomeScrenState();
}

class _HomeScrenState extends State<HomeScren>
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
    LocalController localController = Get.put(LocalController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ChartWidget(),
            CustomeAnimation(
              duration: 1000,
              child: CurrenctMiningWidget(
                localController: localController,
              ),
            ),
            CustomeAnimation(
              duration: 1200,
              child: InvestWidget(
                localController: localController,
              ),
            ),
            CustomeAnimation(
              duration: 1400,
              child: MarketWidget(
                localController: localController,
              ),
            )
          ],
        ),
      ),
    );
  }
}
