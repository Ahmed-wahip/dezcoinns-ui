import 'package:dzcoins/controllers/localization_controller.dart';
import 'package:dzcoins/core/color_app.dart';
import 'package:dzcoins/routes/pushto.dart';
import 'package:dzcoins/screens/market_scren.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MarketWidget extends StatelessWidget {
  const MarketWidget({super.key, required this.localController});
  final LocalController localController;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          pushTo(context, const MarketScren());
        },
        child: SizedBox(
          height: height * 0.25,
          width: width,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
                colors: [
                  Colors.black,
                  Colors.green,
                ],
                stops: [0.2, 1],
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                    'assets/icons/shop.png',
                    height: height * 0.15,
                  ),
                ),
                Expanded(
                    child: SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Text(
                        'shop'.tr,
                        style: TextStyle(
                            color: backgroundColor,
                            fontSize: width * 0.055,
                            fontFamily: 'Lato'),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Text(
                          'shop_des'.tr,
                          style: TextStyle(
                              color: backgroundColor,
                              fontSize: width * 0.035,
                              fontFamily: 'workSans'),
                        ),
                      )
                    ],
                  ),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
