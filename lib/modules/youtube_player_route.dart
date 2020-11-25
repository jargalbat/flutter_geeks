import 'package:flutter/material.dart';
import 'package:flutter_geeks/widgets/app_bar.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubePlayerRoute extends StatefulWidget {
  const YoutubePlayerRoute({Key key, this.url}) : super(key: key);

  final String url;

  @override
  _YoutubePlayerRouteState createState() => _YoutubePlayerRouteState();
}

class _YoutubePlayerRouteState extends State<YoutubePlayerRoute> {
  YoutubePlayerController _controller;

  @override
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(widget.url),
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: true,
      ),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: CustomAppBar(title: '', backgroundColor: Colors.black, brightness: Brightness.dark),
      body: SafeArea(
        child: YoutubePlayerBuilder(
          player: YoutubePlayer(
            controller: _controller,
          ),
          builder: (context, player) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // some widgets
                player,
                //some other widgets
              ],
            );
          },
        ),
      ),
    );
  }
}
