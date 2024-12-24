import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class DanceShowVideoPage extends StatefulWidget {
  const DanceShowVideoPage({
    super.key,
    required this.name,
    required this.youtubeID,
    required this.description,
  });

  final String name;
  final String description;
  final String youtubeID;
  @override
  State<DanceShowVideoPage> createState() => _DanceShowVideoPageState();
}

class _DanceShowVideoPageState extends State<DanceShowVideoPage> {
  final controller = YoutubePlayerController.fromVideoId(
    videoId: '1c27y9-MXHs',
    autoPlay: false,
    params: const YoutubePlayerParams(showFullscreenButton: true),
  );

  @override
  void dispose() {
    controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: YoutubePlayerScaffold(
              controller: controller,
              aspectRatio: 16 / 9,
              builder: (context, player) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 16.0,
                  children: [
                    player,
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        widget.description,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ],
                );
              }),
        ),
      ),
    );
  }
}
