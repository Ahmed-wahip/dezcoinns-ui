import 'package:dzcoins/core/color_app.dart';
import 'package:dzcoins/routes/pushto.dart';
import 'package:dzcoins/screens/task_ads_screen.dart';
import 'package:flutter/material.dart';

class ShowAdsVideo extends StatelessWidget {
  const ShowAdsVideo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // vip 1
        GestureDetector(
          onTap: () {},
          child: Container(
            width: width / 3 - 20,
            height: 200,
            margin: const EdgeInsets.all(5),
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.lock,
                  size: 40,
                  color: backgroundColor,
                ),
                const SizedBox(height: 20),
                Text(
                  "Vip 1",
                  style: TextStyle(
                    color: backgroundColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),

        // vip 1+
        GestureDetector(
          onTap: () {},
          child: Container(
            width: width / 3 - 20,
            height: 200,
            margin: const EdgeInsets.all(5),
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.lock,
                  size: 40,
                  color: backgroundColor,
                ),
                const SizedBox(height: 20),
                Text(
                  "Vip 1",
                  style: TextStyle(
                    color: backgroundColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),

        //  normal
        GestureDetector(
          onTap: () {
            pushTo(context, const TaskAdsScreen());
          },
          child: Container(
            width: width / 3 - 20,
            height: 200,
            margin: const EdgeInsets.all(5),
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "30 min",
                  style: TextStyle(
                    color: backgroundColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "1 kounze",
                  style: TextStyle(
                    color: backgroundColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
