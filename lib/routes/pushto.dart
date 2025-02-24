import 'package:flutter/material.dart';

pushTo(context, r) => Navigator.push(
      context,
      PageRouteBuilder<Offset>(
        pageBuilder: (context, animation, secondaryAnimation) {
          const begin = Offset(1.0, 0.0);
          const end = Offset.zero;
          final tween = Tween(begin: begin * 2, end: end);
          final offsetAnimation = animation.drive(tween);
          return SlideTransition(position: offsetAnimation, child: r);
        },
      ),
    );
