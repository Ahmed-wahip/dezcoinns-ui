import 'package:dzcoins/controllers/localization_controller.dart';
import 'package:dzcoins/core/color_app.dart';
import 'package:dzcoins/routes/pushto.dart';
import 'package:dzcoins/screens/currency_mining_screen.dart';
import 'package:dzcoins/widgets/dzml_left.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CurrenctMiningWidget extends StatelessWidget {
  final LocalController localController;
  const CurrenctMiningWidget({super.key, required this.localController});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          pushTo(context, const CurrencyMiningScreen());
        },
        child: SizedBox(
          height: height * 0.27,
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
                  padding: const EdgeInsets.all(20),
                  child: Image.asset(
                    'assets/icons/pickaxe.png',
                    height: height * 0.15,
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Text(
                          'currency_mining'.tr,
                          style: TextStyle(
                              color: w,
                              fontSize: width * 0.055,
                              fontFamily: 'Lato',
                              overflow: TextOverflow.ellipsis),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'currency_mining_des'.tr,
                                style: TextStyle(
                                  color: w,
                                  fontSize: width * 0.035,
                                  fontFamily: 'workSans',
                                ),
                              ),
                              const DzmLeft()
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
