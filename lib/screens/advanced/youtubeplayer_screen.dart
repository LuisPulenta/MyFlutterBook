import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class YoutubeplayerScreen extends StatefulWidget {
  const YoutubeplayerScreen({Key? key}) : super(key: key);

  @override
  State<YoutubeplayerScreen> createState() => _YoutubeplayerScreenState();
}

class _YoutubeplayerScreenState extends State<YoutubeplayerScreen> {
// To control the youtube video functionality
  final _controller = YoutubePlayerController();
  @override
  void initState() {
    super.initState();
    // TO load a video by its unique id
    _controller.loadVideoById(videoId: "PLIAp5nr0q0");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Youtube Player'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              // Youtube player as widget
              child: YoutubePlayer(
                controller: _controller, // Controler that we created earlier
                aspectRatio: 16 / 9, // Aspect ratio you want to take in screen
              ),
            ),
          ),
          const Center(
            child: Text('You need internet connection to play this video'),
          )
        ],
      ),
    );
  }
}
