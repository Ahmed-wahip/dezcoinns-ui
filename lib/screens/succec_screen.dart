// ignore_for_file: must_be_immutable

import 'package:dzcoins/core/color_app.dart';
import 'package:dzcoins/models/user.dart';
import 'package:dzcoins/src/dzcoins_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccesScren extends StatefulWidget {
  UserModel userModel;
  int coins;
  SuccesScren({super.key, required this.coins, required this.userModel});

  @override
  State<SuccesScren> createState() => _SuccesScrenState();
}

class _SuccesScrenState extends State<SuccesScren>
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              height: size.height * 0.4,
              child: Image.asset('assets/icons/sending.png'),
            ),
          ),
          Text('congratulation_sent'.tr,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Ubuntuitalic")),
          const SizedBox(
            height: 5,
          ),
          Text(
            'sent_suecc'.tr,
            style: const TextStyle(
                fontWeight: FontWeight.w300,
                fontFamily: "Ubuntuitalic",
                color: Colors.grey),
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              height: size.height * 0.1,
              width: size.width,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              CircleAvatar(
                                child: Text(widget.userModel.username[0]),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                widget.userModel.username,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        children: [
                          Image.asset('assets/icons/logo.png'),
                          Text(widget.coins.toString())
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          SizedBox(
            height: size.height * 0.06,
            width: size.width / 2,
            child: MaterialButton(
                textColor: backgroundColor,
                color: primaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(context,
                      PageRouteBuilder(pageBuilder: (context, s, a) {
                    return const DzcoinsApp();
                  }), (route) => false);
                },
                child: Text('close'.tr)),
          )
        ],
      ),
    );
  }
}
