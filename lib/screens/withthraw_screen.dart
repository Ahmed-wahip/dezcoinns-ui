import 'package:dzcoins/core/color_app.dart';
import 'package:dzcoins/screens/barid_tab_screen.dart';
import 'package:dzcoins/screens/payer_tab.dart';
import 'package:dzcoins/screens/usdt_tab_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WithThrawScreen extends StatefulWidget {
  const WithThrawScreen({super.key});

  @override
  State<WithThrawScreen> createState() => _WithThrawScreenState();
}

class _WithThrawScreenState extends State<WithThrawScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 10,
          bottom: TabBar(
            indicatorColor: w,
            indicatorSize: TabBarIndicatorSize.label,
            labelColor: w,
            tabs: const [
              Tab(icon: Text('USDT')),
              Tab(icon: Text('Payer')),
              Tab(icon: Text('Baridmoob')),
            ],
          ),
        ),
        body: const TabBarView(
          children: [UsdtTabScren(), PayerTabScren(), BaridMobTabScren()],
        ),
      ),
    );
  }
}

class WithdrawnotavailbleUi extends StatelessWidget {
  const WithdrawnotavailbleUi({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: size.height * 0.08,
        ),
        Center(
          child: SizedBox(
            height: size.height * 0.3,
            child: Image.asset(
              'assets/icons/withdraw.png',
            ),
          ),
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        Text('withdraw_title'.tr,
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: "Ubuntuitalic")),
        const SizedBox(
          height: 5,
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: Text(
                'withdraw_des'.tr,
                textAlign: TextAlign.center,
              ),
            )),
        SizedBox(
          height: size.height * 0.04,
        ),
      ],
    ));
  }
}
