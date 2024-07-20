import 'package:dzcoins/core/color_app.dart';
import 'package:flutter/material.dart';

class TaskAdsScreen extends StatelessWidget {
  const TaskAdsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ads viow"),
      ),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            width: width * 0.8,
            height: 60,
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
            child: Center(
              child: Text(
                "Task namber ${index + 1}",
                style: TextStyle(
                  color: backgroundColor,
                  fontSize: width * 0.045,
                  fontFamily: 'workSans',
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
