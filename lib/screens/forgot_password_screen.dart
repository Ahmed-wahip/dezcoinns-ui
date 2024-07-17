import 'package:dzcoins/core/color_app.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/utils.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen>
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
      appBar: AppBar(),
      body: ListView(
        children: [
          SizedBox(
            height: size.height * 0.09,
          ),
          Image.asset(
            "assets/icons/logo.png",
            fit: BoxFit.cover,
            height: size.height * 0.23,
            width: size.height * 0.23,
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Center(
            child: Text(
              'forgot_password_title'.tr,
              style: TextStyle(
                  fontSize: size.width * 0.04, fontWeight: FontWeight.w500),
            ),
          ),
          Center(
            child: Text(
              'forgot_password_des'.tr,
              style: TextStyle(
                  fontSize: size.width * 0.04, fontWeight: FontWeight.w300),
            ),
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              key: key,
              child: TextFormField(
                validator: (value) {
                  if (!EmailValidator.validate(value!)) {
                    return 'email_validator'.tr;
                  }
                  return null;
                },
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.newline,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email),
                    hintText: 'email_adress'.tr,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          Align(
            alignment: Alignment.center,
            child: MaterialButton(
                minWidth: size.width / 1.6,
                height: 50,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                textColor: w,
                color: green,
                onPressed: () {},
                child: SizedBox(
                  width: size.width / 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'send'.tr,
                        style: TextStyle(
                            fontFamily: 'TextaHeavy',
                            fontSize: size.width * 0.05),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      CircularProgressIndicator(
                        color: w,
                        strokeWidth: 0.8,
                      ),
                    ],
                  ),
                )),
          )
        ],
      ),
    );
  }
}
