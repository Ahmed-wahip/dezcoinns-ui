import 'package:dzcoins/controllers/localization_controller.dart';
import 'package:dzcoins/core/color_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomeBackBotton extends StatelessWidget {
  const CustomeBackBotton({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    LocalController localController = Get.put(LocalController());
    return Positioned(
      top: size.height * 0.07,
      left: localController.currentLang == const Locale('en') ? 20 : null,
      right: localController.currentLang == const Locale('ar') ? 20 : null,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 15,
        child: IconButton(
          onPressed: () => Navigator.pop(context),
          icon:  Icon(
            Icons.arrow_back_ios_new,
            size: 20,
            color: primaryColor,
          ),
        ),
      ),
    );
  }
}
