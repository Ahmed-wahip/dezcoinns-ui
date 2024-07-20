import 'dart:io';
import 'package:dzcoins/core/color_app.dart';
import 'package:dzcoins/routes/pushto.dart';
import 'package:dzcoins/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/utils.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  GlobalKey<FormState> key = GlobalKey();

  bool visibility = false;
  void onVisibilityCahnged() {
    visibility = !visibility;
    setState(() {});
  }

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
            Image.asset(
              "assets/icons/logo.png",
              fit: BoxFit.cover,
              height: height * 0.23,
              width: height * 0.23,
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Center(
              child: Text(
                'signup'.tr,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: width * 0.07,
                    fontFamily: 'TextaHeavy'),
              ),
            ),
            SizedBox(
              height: height * 0.01,
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
              height: height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                validator: (value) {
                  return null;
                },
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person),
                    hintText: 'username'.tr,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                validator: (value) {
                  return null;
                },
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
                validator: (val) {
                  if (val!.isEmpty) {
                    return 'password_empty'.tr;
                  } else if (val.length > 20) {
                    return 'password_long'.tr;
                  } else {
                    return null;
                  }
                },
                textInputAction: TextInputAction.next,
                obscureText: !visibility,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                      onPressed: onVisibilityCahnged,
                      icon: visibility
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off)),
                  hintText: 'password'.tr,
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
                textInputAction: TextInputAction.go,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.link),
                  hintText: 'promo_code'.tr,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Text('have_account'.tr),
                  TextButton(
                    onPressed: () => pushTo(context, const LoginScreen()),
                    child: Text(
                      'login'.tr,
                      style: TextStyle(color: red),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: CheckboxListTile(
                isThreeLine: true,
                title: Text(
                  'terms'.tr,
                  style: TextStyle(fontSize: height * 0.013),
                ),
                subtitle: TextButton(
                  onPressed: () {},
                  child: Text(
                    'www.dzmovment.com',
                    style: TextStyle(color: blue),
                  ),
                ),
                value: false,
                onChanged: (w) {},
              ),
            ),
            SizedBox(
              height: height * 0.001,
            ),
            Align(
              alignment: Alignment.center,
              child: MaterialButton(
                minWidth: width / 1.6,
                height: 50,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                textColor: backgroundColor,
                color: primaryColor,
                onPressed: () {},
                child: SizedBox(
                  width: width / 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'signup'.tr,
                        style: TextStyle(
                            fontFamily: 'TextaHeavy', fontSize: width * 0.05),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      CircularProgressIndicator(
                        color: backgroundColor,
                        strokeWidth: 0.8,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
