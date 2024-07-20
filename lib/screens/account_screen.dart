import 'package:dzcoins/core/color_app.dart';
import 'package:dzcoins/widgets/chose_lang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: backgroundColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.7),
                    offset: const Offset(0, 1),
                  )
                ],
              ),
              child: const Icon(Icons.person_outlined, size: 150),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Ahmed wahip",
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Text(
              "test123@gmail.com",
              style: TextStyle(
                color: primaryColor,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            ListTile(
              onTap: () {},
              title: Text("add_user_photo".tr),
              leading: CircleAvatar(
                backgroundColor: Colors.green.withOpacity(.5),
                child: Icon(
                  Icons.camera,
                  color: b,
                ),
              ),
            ),
            ListTile(
              onTap: () async {
                // Add your onPresse
                await _launchUrl();
              },
              title: Text("telegram_button_msg".tr),
              leading: CircleAvatar(
                backgroundColor: Colors.green.withOpacity(.5),
                child: Icon(
                  Icons.telegram_outlined,
                  color: b,
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              title: Text("shere_app_msg".tr),
              leading: CircleAvatar(
                backgroundColor: Colors.green.withOpacity(.5),
                child: Icon(
                  Icons.share,
                  color: b,
                ),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green.withOpacity(.5),
                child: Icon(
                  Icons.language,
                  color: b,
                ),
              ),
              trailing: const ChoseLan(),
              title: Text('languages'.tr),
            ),
            // log out
            ListTile(
              onTap: () {},
              title: Text('log_out'.tr),
              trailing: const Icon(Icons.arrow_forward_ios),
              leading: CircleAvatar(
                backgroundColor: Colors.green.withOpacity(.5),
                child: Icon(
                  Icons.logout_sharp,
                  color: b,
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),

            //
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                'refrel_message'.tr,
                style: TextStyle(color: red),
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            //
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'terms'.tr,
                style: TextStyle(color: red),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _launchUrl() async {
    if (!await launchUrl(Uri.parse('https://t.me/DzMovment'))) {
      throw Exception('Could not launch url');
    }
  }
}
