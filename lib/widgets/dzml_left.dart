import 'package:dzcoins/core/color_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DzmLeft extends StatelessWidget {
  const DzmLeft({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 0.05,
      width: size.width,
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "data.toString()",
                  style: TextStyle(
                      color: w,
                      fontSize: size.width * 0.035,
                      fontFamily: 'workSans'),
                ),
                const SizedBox(
                  width: 5,
                ),
                Flexible(
                  child: Text(
                    'currency_investmen_dessecond'.tr,
                    style: TextStyle(
                        color: w,
                        fontSize: size.width * 0.035,
                        fontFamily: 'workSans'),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Text(
                'currency_investment_descriptionThird'.tr,
                style: TextStyle(
                    color: w,
                    fontSize: size.width * 0.035,
                    fontFamily: 'workSans'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
