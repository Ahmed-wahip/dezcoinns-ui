import 'package:dzcoins/core/color_app.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

// ignore: must_be_immutable
class ChartWidget extends StatelessWidget {
  ChartWidget({super.key});
  static DateTime today = DateTime.now();
  DateTime lastWeek = today.subtract(const Duration(days: 7));

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      borderWidth: 2,
      // borderColor: green,
      // backgroundColor: blue,
      margin: const EdgeInsets.all(10),
      // plotAreaBorderColor: green,
      // plotAreaBackgroundColor: green,
      palette: [backgroundColor],
      enableAxisAnimation: true,
      plotAreaBorderWidth: 2,

      primaryXAxis: const CategoryAxis(),
      // Chart title
      title: ChartTitle(text: 'chart_last_seven_days'.tr),
      // Enable legend
      legend: const Legend(isVisible: true),
      // Enable tooltip
      tooltipBehavior: TooltipBehavior(enable: true),
    );
  }
}
