import 'package:dzcoins/core/color_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UsdtTabScren extends StatefulWidget {
  const UsdtTabScren({super.key});

  @override
  State<UsdtTabScren> createState() => _UsdtTabScrenState();
}

class _UsdtTabScrenState extends State<UsdtTabScren>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  GlobalKey<FormState> key = GlobalKey();

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
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Form(
        key: key,
        child: ListView(
          children: [
            SizedBox(
              height: size.height * 0.03,
            ),
            Center(
              child: Text(
                'calculate_withdrawal'.tr,
                style: const TextStyle(
                  color: Colors.red,
                  fontFamily: 'Rubik',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextFormField(
                onChanged: (input) {},
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  suffixIcon: Image.asset(
                    'assets/icons/logo2.png',
                    height: size.height * 0.03,
                  ),
                  labelText: 'your_sold_dzm'.tr,
                  labelStyle: TextStyle(color: b),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black87),
                      borderRadius: BorderRadius.circular(20)),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black87),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  enabled: false,
                  suffixIcon: Image.asset(
                    'assets/icons/usdt.png',
                    height: size.height * 0.03,
                  ),
                  labelText: 'you_get_inUsdt'.tr,
                  labelStyle: TextStyle(color: b),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  disabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black87),
                      borderRadius: BorderRadius.circular(20)),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black87),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'trc_20'.tr,
                style: const TextStyle(
                    fontFamily: 'Rubik', fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'your_trc_here'.tr,
                  labelStyle: TextStyle(color: b),
                  labelText: 'your_trc_here'.tr,
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  disabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black87),
                      borderRadius: BorderRadius.circular(20)),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black87),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'note'.tr,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.red),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'binance_text'.tr,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'binance_id'.tr,
                  labelStyle: TextStyle(color: b),
                  labelText: 'binance_id'.tr,
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  disabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black87),
                      borderRadius: BorderRadius.circular(20)),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black87),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Align(
              alignment: Alignment.center,
              child: MaterialButton(
                minWidth: size.width / 1.6,
                height: size.height * 0.06,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: green,
                textColor: w,
                onPressed: () {},
                child: SizedBox(
                  width: size.width / 1.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Order_now'.tr),
                      SizedBox(
                        width: size.width * 0.05,
                      ),
                      const Icon(Icons.email)
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
          ],
        ),
      ),
    );
  }
}
