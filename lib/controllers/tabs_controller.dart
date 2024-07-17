import 'package:dzcoins/screens/account_screen.dart';
import 'package:dzcoins/screens/home.dart';
import 'package:dzcoins/screens/invite_friends.dart';
import 'package:dzcoins/screens/withthraw_screen.dart';
import 'package:flutter/material.dart';

class TabsController extends ChangeNotifier {
  int selectedIndex = 0;

  static const List<Widget> screns = <Widget>[
    HomeScren(),
    InviteFriendsScren(),
    WithThrawScreen(),
    AccountScreen(),
  ];
  void onItemTapped(int index, BuildContext context) {
    selectedIndex = index;
    notifyListeners();
  }
}
