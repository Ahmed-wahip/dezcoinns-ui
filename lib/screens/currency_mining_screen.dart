import 'package:dzcoins/core/color_app.dart';
import 'package:dzcoins/widgets/caunter_time.dart';
import 'package:dzcoins/widgets/show_ads_video.dart';
import 'package:flutter/material.dart';

class CurrencyMiningScreen extends StatelessWidget {
  const CurrencyMiningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        centerTitle: false,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Image.asset(
                  'assets/icons/logo.png',
                  height: 50,
                ),
                Text(
                  "authContoller".toString(),
                  style: TextStyle(
                    color: backgroundColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: const Column(
        children: [
          CaunterTime(),
          Spacer(),
          ShowAdsVideo(),
          Spacer(),
        ],
      ),
    );
  }
}
