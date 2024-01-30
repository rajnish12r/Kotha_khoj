import 'package:flutter/material.dart';
import 'package:hamro_rental_app/login.dart';
//import 'package:hamro_rental_app/map.dart';
import 'package:video_player/video_player.dart';
class splsshscreen extends StatefulWidget {
  const splsshscreen({super.key});

  @override
  State<splsshscreen> createState() => _splsshscreenState();
}

class _splsshscreenState extends State<splsshscreen> {

 late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('images/video.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
    _playVideo();
      
  }

  void _playVideo() async {
    _controller.play();

    await Future.delayed(const Duration(seconds: 4));
    Navigator.push(context, MaterialPageRoute(builder: (_)=>loginApp()));
  }
   @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: _controller.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
              : Container(),

        ),



      ),
    );
  }
}