import 'package:dzcoins/core/color_app.dart';
import 'package:dzcoins/widgets/dzml_left.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CaunterTime extends StatelessWidget {
  const CaunterTime({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
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
                child: Container(
                  width: width / 3,
                  height: width / 3,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(width: 5, color: Colors.black),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      "23:58:54",
                      style: TextStyle(
                        color: w,
                        fontSize: width * 0.035,
                        fontFamily: 'workSans',
                      ),
                    ),
                  ),
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
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/icons/logo.png',
                            height: 50,
                          ),
                          Text(
                            "authContoller".toString(),
                            style: TextStyle(
                              color: w,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                        ],
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
    );
  }
}