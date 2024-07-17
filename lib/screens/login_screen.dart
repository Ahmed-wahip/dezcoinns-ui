import 'dart:io';
import 'package:dzcoins/core/color_app.dart';
import 'package:dzcoins/routes/pushto.dart';
import 'package:dzcoins/screens/forgot_password_screen.dart';
import 'package:dzcoins/screens/sign_up_screen.dart';
import 'package:dzcoins/src/dzcoins_app.dart';
import 'package:flutter/material.dart';
import 'package:get/utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
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
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Form(
        key: key,
        child: ListView(
          physics: Platform.isAndroid ? const BouncingScrollPhysics() : null,
          children: [
            SizedBox(
              height: height * 0.02,
            ),
            Image.asset(
              "assets/icons/logo.png",
              fit: BoxFit.cover,
              height: height * 0.23,
              width: height * 0.23,
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Center(
              child: Text(
                'login'.tr,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: width * 0.07,
                  fontFamily: 'TextaHeavy',
                ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    '${'welcome'.tr} 👋',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: width * 0.04,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'welcom_title'.tr,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: width * 0.04,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email),
                  hintText: 'email_adress'.tr,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                // obscureText: !controller.obscureText,
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.go,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.visibility_off),
                  ),
                  hintText: 'password'.tr,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextButton(
                  onPressed: () =>
                      pushTo(context, const ForgotPasswordScreen()),
                  child: Text(
                    'forget_password'.tr,
                    style: const TextStyle(
                      color: green,
                      decoration: TextDecoration.underline,
                      decorationColor: green,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            MaterialButton(
              minWidth: width / 1.6,
              height: 50,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              textColor: w,
              color: green,
              onPressed: () {
                pushTo(context, const HomeTabsScren());
              },
              child: Text(
                'login'.tr,
                style: TextStyle(
                  fontFamily: 'TextaHeavy',
                  fontSize: width * 0.05,
                ),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('dont_have_account'.tr),
                TextButton(
                  onPressed: () => pushTo(context, const SignupScreen()),
                  child: Text(
                    'signup'.tr,
                    style: const TextStyle(color: green),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
