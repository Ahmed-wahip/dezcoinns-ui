import 'package:country_picker/country_picker.dart';
import 'package:dzcoins/core/color_app.dart';
import 'package:dzcoins/models/product.dart';
import 'package:dzcoins/widgets/back_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class OrderScren extends StatefulWidget {
  ProductModel productModel;
  OrderScren({super.key, required this.productModel});

  @override
  State<OrderScren> createState() => _OrderScrenState();
}

class _OrderScrenState extends State<OrderScren>
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
      body: Stack(
        children: [
          Positioned.fill(
              child: Container(
            color: primaryColor,
          )),
          Positioned.fill(
            top: size.height * 0.17,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 400),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Form(
                key: key,
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: TextButton(
                            onPressed: () {
                              showCountryPicker(
                                showSearch: false,
                                context: context,
                                showPhoneCode:
                                    true, // optional. Shows phone code before the country name.
                                onSelect: (value) {},
                              );
                            },
                            child: Text(
                              "orderController.slectedCountry.flagEmoji",
                              style: TextStyle(color: b, fontSize: 24),
                            ),
                          ),
                          hintText: 'city'.tr,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.location_city),
                          hintText: 'state'.tr,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.location_on),
                          hintText: 'adress'.tr,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.numbers),
                          hintText: 'zip_code'.tr,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                            prefixIcon: TextButton(
                              onPressed: () {
                                showCountryPicker(
                                  showSearch: false,
                                  context: context,
                                  showPhoneCode:
                                      true, // optional. Shows phone code before the country name.
                                  onSelect: (value) {},
                                );
                              },
                              child: Text(
                                "+  orderController.countryCode",
                                style: TextStyle(color: b),
                              ),
                            ),
                            hintText: 'phone_number'.tr,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'invalid_email'.tr;
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.email),
                            hintText: 'email'.tr,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: MaterialButton(
                        minWidth: size.width / 1.6,
                        height: size.height * 0.07,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        textColor: backgroundColor,
                        color: primaryColor,
                        onPressed: () {},
                        child: Text(
                          'order'.tr,
                          style: TextStyle(
                            fontFamily: 'TextaHeavy',
                            fontSize: size.width * 0.05,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const CustomeBackBotton(),
          Positioned(
            top: size.height * 0.08,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                'order'.tr,
                style: TextStyle(
                    fontSize: size.width * 0.07,
                    color: backgroundColor,
                    fontFamily: 'TextaHeavy'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
