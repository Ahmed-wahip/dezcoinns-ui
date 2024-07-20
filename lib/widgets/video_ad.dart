import 'package:dzcoins/core/color_app.dart';
import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';

class VideoAdScren extends StatefulWidget {
  const VideoAdScren({super.key});

  @override
  State<VideoAdScren> createState() => _VideoAdScrenState();
}

class _VideoAdScrenState extends State<VideoAdScren>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool rewarded = false;
  ChewieController? chewieController;
  final videoPlayerController =
      VideoPlayerController.asset('assets/video/ad_video.mp4');
  Future init() async {
    await videoPlayerController.initialize();
    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      autoPlay: true,
    );
    setState(() {});
  }

  @override
  void initState() {
    init();
    videoPlayerController.addListener(() {});

    super.initState();
    _controller = AnimationController(vsync: this);
  }

  listener() {}

  @override
  void dispose() {
    videoPlayerController.dispose();
    chewieController!.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Expanded(
              child: chewieController == null
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : Chewie(controller: chewieController!)),
          const SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.center,
            child: MaterialButton(
                minWidth: size.width / 1.6,
                height: 50,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                textColor: backgroundColor,
                color: Colors.pink,
                onPressed: () async {
                  if (!await launchUrl(
                      Uri.parse('https://url.hk/i/en/z9hvv'))) {
                    throw Exception('Could not launch url');
                  }
                },
                child: SizedBox(
                  width: size.width / 1.3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: Image.asset(
                              height: 40,
                              width: 40,
                              'assets/icons/logo_ad.png',
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'card'.tr,
                        style: TextStyle(
                            fontFamily: 'TextaHeavy',
                            fontSize: size.width * 0.05),
                      ),
                    ],
                  ),
                )),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
