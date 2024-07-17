import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ViewFullImage extends StatelessWidget {
  String imageUrl;
  ViewFullImage({super.key, required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: CachedNetworkImage(
          errorWidget: (context, url, error) => const Center(
            child: Icon(
              Icons.error,
              color: Colors.white,
            ),
          ),
          imageUrl: imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
