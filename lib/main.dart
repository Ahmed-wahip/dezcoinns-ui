import 'package:dzcoins/core/service.dart';
import 'package:dzcoins/src/root_app.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initservice();
  runApp(const RootApp());
}
