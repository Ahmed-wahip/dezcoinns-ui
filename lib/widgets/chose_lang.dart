import 'package:dzcoins/core/flag_app.dart';
import 'package:dzcoins/controllers/localization_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChoseLan extends GetView<LocalController> {
  const ChoseLan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton(
        value: controller.selcted,
        elevation: 16,
        style: const TextStyle(color: Colors.deepPurple),
        underline: Container(
          height: 2,
          color: Colors.deepPurpleAccent,
        ),
        onChanged: (String? newValue) {
          controller.selcted = newValue!;
          controller.changeLang(newValue);
        },
        icon: const SizedBox(),
        items: <String>[
          "en",
          "ar",
        ].map<DropdownMenuItem<String>>(
          (String value) {
            String flag = FlgaApp.getFlag(value);

            return DropdownMenuItem<String>(
              value: value,
              child: Padding(
                padding: const EdgeInsets.all(7),
                child: Image.asset(
                  flag,
                ),
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
