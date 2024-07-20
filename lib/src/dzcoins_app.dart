import 'package:dzcoins/core/color_app.dart';
import 'package:dzcoins/controllers/tabs_controller.dart';
import 'package:dzcoins/widgets/navgetor_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DzcoinsApp extends StatefulWidget {
  const DzcoinsApp({super.key});

  @override
  State<DzcoinsApp> createState() => _DzcoinsAppState();
}

class _DzcoinsAppState extends State<DzcoinsApp> {
  @override
  void initState() {
    super.initState();
    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {});
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TabsController(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Dzmovement',
            style: TextStyle(color: backgroundColor, fontFamily: 'TextaHeavy'),
          ),
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: const AssetImage("assets/icons/dzm_logo.png"),
              backgroundColor: backgroundColor,
            ),
          ),
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
                      color: backgroundColor,
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
                TabsController.screns.elementAt(TabsController.selectedIndex),
          ),
        ),
        bottomNavigationBar: Consumer<TabsController>(
          builder: (context, tabsController, child) => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                height: 55.5,
                width: MediaQuery.of(context).size.width * 1 - 20,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 30,
                      offset: const Offset(0, 5),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(7.2),
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () => tabsController.onItemTapped(index, context),
                    child: NavigatorBar(
                      index: index,
                      currenIndex: TabsController.selectedIndex,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
