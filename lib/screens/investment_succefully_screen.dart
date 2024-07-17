
import 'package:dzcoins/core/color_app.dart';
import 'package:dzcoins/src/dzcoins_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';


class InvestSuccefullySentScreen extends StatefulWidget {
  const InvestSuccefullySentScreen({
    super.key,
  });

  @override
  State<InvestSuccefullySentScreen> createState() => _SuccesScrenState();
}

class _SuccesScrenState extends State<InvestSuccefullySentScreen>
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
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Lottie.asset('assets/gif/y.json'),
          Text('congratulation_sent'.tr,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Ubuntuitalic")),
          const SizedBox(
            height: 5,
          ),
          Text(
            'sent_suecc_req'.tr,
            style: const TextStyle(
                fontWeight: FontWeight.w300,
                fontFamily: "Ubuntuitalic",
                color: Colors.grey),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          SizedBox(
            height: size.height * 0.06,
            width: size.width / 2,
            child: MaterialButton(
                textColor: w,
                color: green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(context,
                      PageRouteBuilder(pageBuilder: (context, s, a) {
                    return const HomeTabsScren();
                  }), (route) => false);
                },
                child: Text('close'.tr)),
          )
        ],
      ),
    );
  }
}
