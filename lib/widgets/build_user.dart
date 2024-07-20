// ignore_for_file: must_be_immutable

import 'package:dzcoins/core/color_app.dart';
import 'package:dzcoins/models/user.dart';
import 'package:dzcoins/routes/pushto.dart';
import 'package:dzcoins/screens/transfer_scren.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserWidget extends StatelessWidget {
  UserModel userModel;

  UserWidget({
    super.key,
    required this.userModel,
  });
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return ListTile(
      title: Text(
        userModel.username,
        style: TextStyle(
          fontFamily: 'TextaHeavy',
          fontSize: size.height * 0.03,
        ),
      ),
      subtitle: Text(userModel.id),
      leading: CircleAvatar(
        child: Text(userModel.username[0].toUpperCase()),
      ),
      trailing: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        textColor: backgroundColor,
        color: primaryColor,
        height: size.height * 0.06,
        minWidth: size.width * 0.1,
        onPressed: () => pushTo(
          context,
          TransferScren(userModel: userModel),
        ),
        child: Text('send'.tr),
      ),
    );
  }
}
