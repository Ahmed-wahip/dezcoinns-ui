import 'package:dzcoins/core/color_app.dart';
import 'package:dzcoins/controllers/tabs_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeTabsScren extends StatefulWidget {
  const HomeTabsScren({super.key});

  @override
  State<HomeTabsScren> createState() => _HomeTabsScrenState();
}

class _HomeTabsScrenState extends State<HomeTabsScren> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {});
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TabsController(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Dzmovement',
            style: TextStyle(color: w, fontFamily: 'TextaHeavy'),
          ),
          leading: Container(),
          centerTitle: false,
          actions: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Image.asset(
                    'assets/icons/logo.png',
                    height: 50,
                  ),
                  Text(
                    "authContoller".toString(),
                    style: TextStyle(
                      color: w,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        body: Consumer<TabsController>(
          builder: (context, TabsController tabsController, child) => Center(
            child:
                TabsController.screns.elementAt(tabsController.selectedIndex),
          ),
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () async {
        //     // Add your onPressed logic here
        //     await _launchUrl();
        //   },
        //   backgroundColor: green,
        //   elevation: 0,
        //   child: Icon(
        //     Icons.telegram,
        //     color: w,
        //     size: 30,
        //   ), // You can adjust the elevation as per your preference
        // ),
        bottomNavigationBar: Consumer<TabsController>(
          builder: (context, tabsController, child) => BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: const Icon(Icons.home),
                label: 'home_page'.tr,
                backgroundColor: green,
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.currency_exchange),
                label: 'change_coins'.tr,
                backgroundColor: green,
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.payment),
                label: 'withdrawal_profits'.tr,
                backgroundColor: green,
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.settings),
                label: 'profil'.tr,
                backgroundColor: green,
              ),
            ],
            currentIndex: tabsController.selectedIndex,
            selectedItemColor: w,
            showUnselectedLabels: true,
            unselectedItemColor: Colors.white.withOpacity(0.7),
            onTap: (index) => tabsController.onItemTapped(index, context),
          ),
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
