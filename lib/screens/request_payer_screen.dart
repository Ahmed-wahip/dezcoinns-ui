import 'package:clipboard/clipboard.dart';
import 'package:dzcoins/widgets/show_snakbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../core/color_app.dart';

class RequstewithPayerScreen extends StatefulWidget {
  const RequstewithPayerScreen({super.key});

  @override
  State<RequstewithPayerScreen> createState() => _RequstewithPayerScreenState();
}

class _RequstewithPayerScreenState extends State<RequstewithPayerScreen>
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
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'currency_invest'.tr,
          style: TextStyle(
              fontSize: size.width * 0.07,
              color: backgroundColor,
              fontFamily: 'TextaHeavy'),
        ),
      ),
      body: Form(
        key: key,
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            SizedBox(
              height: size.height * 0.03,
            ),
            Center(
              child: Text(
                'calculate'.tr,
                style: const TextStyle(
                    color: Colors.red,
                    fontFamily: 'Rubik',
                    fontWeight: FontWeight.bold),
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
                    labelText: 'you_get_dzm'.tr,
                    labelStyle: TextStyle(color: b),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black87),
                        borderRadius: BorderRadius.circular(20)),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black87),
                        borderRadius: BorderRadius.circular(20))),
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
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(4),
                      child: Image.asset(
                        'assets/icons/payer.png',
                        height: size.height * 0.03,
                      ),
                    ),
                    labelText: 'you_pay_inPayer'.tr,
                    labelStyle: TextStyle(color: b),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    disabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black87),
                        borderRadius: BorderRadius.circular(20)),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black87),
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'payer_wallet_description'.tr,
                style: const TextStyle(
                    fontFamily: 'Rubik', fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: size.height * 0.09,
                  width: size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black87)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Expanded(
                        flex: 3,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'P1081175524',
                            style: TextStyle(overflow: TextOverflow.ellipsis),
                          ),
                        ),
                      ),
                      Expanded(
                          child: IconButton(
                              onPressed: () {
                                FlutterClipboard.copy('P1081175524').then(
                                    (value) =>
                                        snackbarMessage(context, 'copied'.tr));
                              },
                              icon: const Icon(Icons.copy)))
                    ],
                  ),
                )),
            SizedBox(
              height: size.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'screenshot'.tr,
                style: const TextStyle(
                    fontFamily: 'Rubik', fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  hoverColor: backgroundColor,
                  focusColor: backgroundColor,
                  highlightColor: backgroundColor,
                  splashColor: backgroundColor,
                  child: Container(
                    height: size.height * 0.24,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black87)),
                    child: Icon(
                      Icons.add_a_photo_outlined,
                      color: b,
                      size: 40,
                    ),
                  ),
                  onTap: () {},
                )),
            SizedBox(
              height: size.height * 0.03,
            ),
            Align(
              alignment: Alignment.center,
              child: MaterialButton(
                minWidth: size.width / 1.6,
                height: size.height * 0.06,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: primaryColor,
                textColor: backgroundColor,
                onPressed: () {},
                child: SizedBox(
                  width: size.width / 1.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('invest_now'.tr),
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
