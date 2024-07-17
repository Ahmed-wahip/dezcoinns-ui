import 'package:dzcoins/core/color_app.dart';
import 'package:dzcoins/widgets/chose_lang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen>
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
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          SizedBox(
            height: size.height * 0.03,
          ),
          CircleAvatar(
            radius: size.width * 0.14,
            child: Center(
              child: Text(
                " authContoller.name[0].toUpperCase()",
                style: TextStyle(fontSize: size.height * 0.05),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "authContoller.coins.toString()",
                  style: TextStyle(
                    color: b,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
                Image.asset(
                  'assets/icons/logo.png',
                  height: 50,
                ),
              ],
            ),
          ),
          ListTile(
            title: const Text("authContoller.email"),
            leading: CircleAvatar(
              backgroundColor: Colors.blueAccent,
              child: Icon(
                Icons.email,
                color: w,
              ),
            ),
          ),
          ListTile(
            title: const Text("authContoller.name"),
            leading: CircleAvatar(
              backgroundColor: Colors.black,
              child: Icon(
                Icons.person,
                color: w,
              ),
            ),
          ),
          ListTile(
            onTap: () {},
            title: Text('log_out'.tr),
            trailing: const Icon(Icons.arrow_forward_ios),
            leading: CircleAvatar(
              backgroundColor: Colors.red,
              child: Icon(
                Icons.logout_sharp,
                color: w,
              ),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.language,
                color: w,
              ),
            ),
            trailing: const ChoseLan(),
            title: Text('languages'.tr),
          ),
          // ListTile(
          //     title: Text(authContoller.userId),
          //     leading: CircleAvatar(
          //       backgroundColor: Colors.green,
          //       child: Icon(
          //         Icons.link,
          //         color: w,
          //       ),
          //     ),
          //     trailing: IconButton(
          //         onPressed: () {
          //           FlutterClipboard.copy(authContoller.userId)
          //               .then((value) => snackbarMessage(
          //                     context,
          //                     'copied'.tr,
          //                   ));
          //         },
          //         icon: const Icon(Icons.copy))),
          // SizedBox(
          //   height: size.height * 0.03,
          // ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 25),
          //   child: Text('refrel_message'.tr),
          // ),
          SizedBox(
            height: size.height * 0.03,
          ),
          //  Padding(
          //   padding:const EdgeInsets.symmetric(horizontal: 20),
          //   child: Text(
          //       'terms'.tr),
          // ),
        ],
      ),
    );
  }
}
