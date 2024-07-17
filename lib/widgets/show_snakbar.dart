
import 'package:dzcoins/core/color_app.dart';
import 'package:flutter/material.dart';

void snackbarMessage(
  BuildContext context,
  String message,
) {
  SnackBar snackBar = SnackBar(
    duration: const Duration(seconds: 2),
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    content: Row(
      children: [
        Icon(
          Icons.error,
          color: w,
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Text(
            message,
            style: const TextStyle(fontFamily: 'TextaHeavy'),
          ),
        ),
      ],
    ),
  );
  ScaffoldMessenger.of(context).showSnackBar(
    snackBar,
  );
}
