import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoplayerScreen extends StatefulWidget {
  const VideoplayerScreen({Key? key}) : super(key: key);

  @override
  State<VideoplayerScreen> createState() => _VideoplayerScreenState();
}

class _VideoplayerScreenState extends State<VideoplayerScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(
        'https://github.com/Abdulla-Noman/appVideo/raw/main/bullfinch_-_2797%20(360p).mp4'))
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video Player'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // SizedBox(height: 20,),
          Center(
            child: _controller.value.isInitialized
                ? AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  )
                : Container(),
          ),

          const Text(' "You need internet connection to play this video" '),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xffEBDDFF),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        onPressed: () {
          setState(() {
            _controller.value.isPlaying
                ? _controller.pause()
                : _controller.play();
          });
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          color: Colors.black87,
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
