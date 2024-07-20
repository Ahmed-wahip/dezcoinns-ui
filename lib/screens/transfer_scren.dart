import 'package:dzcoins/core/color_app.dart';
import 'package:dzcoins/models/user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class TransferScren extends StatefulWidget {
  UserModel userModel;
  TransferScren({super.key, required this.userModel});

  @override
  State<TransferScren> createState() => _TransferScrenState();
}

class _TransferScrenState extends State<TransferScren>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  GlobalKey<FormState> key = GlobalKey();

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
      appBar: AppBar(),
      body: ListView(
        children: [
          SizedBox(
            height: size.height * 0.05,
          ),
          SizedBox(
            width: size.height * 0.15,
            height: size.height * 0.15,
            child: CircleAvatar(
              child: Center(
                child: Text(
                  "user name".toUpperCase(),
                  style: TextStyle(fontSize: size.height * 0.07),
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Center(
            child: Text(
              widget.userModel.username,
              style: TextStyle(
                  fontSize: size.height * 0.03, fontFamily: 'TextaHeavy'),
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Center(child: Text('min_coins'.tr)),
          SizedBox(
            height: size.height * 0.03,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              key: key,
              child: TextFormField(
                validator: (coinsNumber) {
                  if (coinsNumber!.isEmpty || int.parse(coinsNumber) < 50) {
                    return 'min_coins'.tr;
                  } else {
                    return null;
                  }
                },
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.numbers),
                    hintText: 'coins_number'.tr,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          Align(
            alignment: Alignment.center,
            child: MaterialButton(
              minWidth: size.width / 1.6,
              height: size.height * 0.07,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              textColor: backgroundColor,
              color: primaryColor,
              onPressed: () {},
              child: Text(
                'send'.tr,
                style: TextStyle(
                    fontFamily: 'TextaHeavy', fontSize: size.width * 0.05),
              ),
            ),
          )
        ],
      ),
    );
  }
}
