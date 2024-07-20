import 'package:dzcoins/models/navgator_data.dart';
import 'package:flutter/material.dart';

class NavigatorBar extends StatelessWidget {
  final int index, currenIndex;

  const NavigatorBar({
    super.key,
    required this.index,
    required this.currenIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        AnimatedContainer(
          duration: const Duration(seconds: 1),
          curve: Curves.fastLinearToSlowEaseIn,
          width: index == currenIndex ? 115.2 : 64.8,
          alignment: Alignment.center,
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            curve: Curves.fastLinearToSlowEaseIn,
            height: index == currenIndex ? 43.1 : 0,
            width: index == currenIndex ? 115.2 : 0,
            decoration: BoxDecoration(
              color: index == currenIndex
                  ? Colors.green.withOpacity(.5)
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        AnimatedContainer(
          duration: const Duration(seconds: 1),
          curve: Curves.fastLinearToSlowEaseIn,
          // width: index == currenIndex ? 111.6 : 64.8,
          alignment: Alignment.center,
          child: Stack(
            children: [
              Row(
                children: [
                  AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn,
                    width: index == currenIndex ? 46.80 : 0,
                  ),
                  AnimatedOpacity(
                    opacity: index == currenIndex ? 1 : 0,
                    duration: const Duration(seconds: 1),
                    child: Text(
                      index == currenIndex ? titlNavgetor[index] : "",
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn,
                    // width: index == currenIndex ? 10.79 : 90.80,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(
                      iconlNavgetor[index],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
