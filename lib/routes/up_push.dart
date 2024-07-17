import 'package:flutter/material.dart';

pushUpTo(context, r) => Navigator.push(
      context,
      PageRouteBuilder<Offset>(
          pageBuilder: (context, animation, secondaryAnimation) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        final tween = Tween(begin: begin * 2, end: end);
        final offsetAnimation = animation.drive(tween);
        return SlideTransition(position: offsetAnimation, child: r);
      }),
    );
