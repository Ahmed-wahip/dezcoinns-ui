import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InviteFriendsScren extends StatefulWidget {
  const InviteFriendsScren({super.key});

  @override
  State<InviteFriendsScren> createState() => _InviteFriendsScrenState();
}

class _InviteFriendsScrenState extends State<InviteFriendsScren>
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
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: size.height * 0.05,
          ),
          Center(
              child: Image.asset('assets/icons/search.png',
                  height: size.height * 0.25)),
          const SizedBox(
            height: 10,
          ),
          Text(
            'search_title'.tr,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'search_des'.tr,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
