import 'package:flutter/material.dart';
import 'package:flutter_geeks/app/asset_helper/asset_name.dart';
import 'package:flutter_geeks/modules/code_route.dart';
import 'package:flutter_geeks/modules/demo/demo_animated_container.dart';
import 'package:flutter_geeks/modules/demo/demo_expanded.dart';
import 'package:flutter_geeks/modules/demo/demo_opacity.dart';
import 'package:flutter_geeks/modules/demo/demo_safearea_route.dart';
import 'package:flutter_geeks/modules/demo/demo_wrap.dart';
import 'package:flutter_geeks/modules/youtube_player_route.dart';
import 'package:flutter_geeks/widgets/app_bar.dart';
import 'package:flutter_geeks/widgets/buttons.dart';

class HomeRoute extends StatefulWidget {
  @override
  _HomeRouteState createState() => _HomeRouteState();
}

class _HomeRouteState extends State<HomeRoute> {
  final _homeKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _homeKey,
      appBar: EmptyAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10.0),

              /// Title
              Text(
                'Flutter Geeks',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w800,
                ),
              ),

              SizedBox(height: 10.0),

              Row(
                children: [
                  /// SafeArea
                  _cardItem(
                    text: 'SafeArea',
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DemoSafeAreaRoute())),
                    filePath: 'lib/modules/demo/demo_safearea.dart',
                    youtubeUrl: 'https://youtu.be/lkF0TQJO0bA',
                    flutterUrl: 'https://api.flutter.dev/flutter/widgets/SafeArea-class.html',
                    marginRight: 10.0,
                  ),

                  /// Expanded
                  _cardItem(
                    text: 'Expanded',
                    child: DemoExpanded(),
                    filePath: 'lib/modules/demo/demo_expanded.dart',
                    youtubeUrl: 'https://youtu.be/_rnZaagadyo',
                    flutterUrl: 'https://api.flutter.dev/flutter/widgets/Expanded-class.html',
                    marginLeft: 10.0,
                  ),
                ],
              ),

              Row(
                children: [
                  /// Wrap
                  _cardItem(
                    text: 'Wrap',
                    child: DemoWrap(),
                    filePath: 'lib/modules/demo/demo_wrap.dart',
                    youtubeUrl: 'https://youtu.be/z5iw2SeFx2M',
                    flutterUrl: 'https://api.flutter.dev/flutter/widgets/Wrap-class.html',
                    marginRight: 10.0,
                  ),

                  /// Opacity
                  _cardItem(
                    text: 'Opacity',
                    child: DemoOpacity(),
                    filePath: 'lib/modules/demo/demo_opacity.dart',
                    youtubeUrl: 'https://youtu.be/9hltevOHQBw',
                    flutterUrl: 'https://api.flutter.dev/flutter/widgets/Opacity-class.html',
                    marginLeft: 10.0,
                  ),
                ],
              ),

              /// AnimatedContainer
              Row(
                children: [
                  _cardItem(
                    text: 'AnimatedContainer',
                    child: DemoAnimatedContainer(),
                    filePath: 'lib/modules/demo/demo_animated_container.dart',
                    youtubeUrl: 'https://youtu.be/yI-8QHpGIP4',
                    flutterUrl: 'https://api.flutter.dev/flutter/widgets/AnimatedContainer-class.html',
                    marginLeft: 10.0,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _cardItem({
    String text,
    Function onTap,
    Widget child,
    String filePath,
    String youtubeUrl,
    String flutterUrl,
    double marginLeft = 20.0,
    double marginRight = 20.0,
  }) {
    return Expanded(
      child: Card(
        margin: EdgeInsets.fromLTRB(marginLeft, 10.0, marginRight, 10.0),
        child: InkWell(
          onTap: () {
            if (onTap != null) {
              onTap();
            } else {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CodeRoute(child: child, filePath: filePath, url: flutterUrl),
                ),
              );
            }
          },
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Row(
              children: [
                /// Text
                Text(text, style: TextStyle(fontSize: 16.0)),

                Spacer(),

                /// Youtube - Button
                ImageButton(
                  assetName: AssetName.youtube,
                  margin: EdgeInsets.all(5.0),
                  imageHeight: 20.0,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => YoutubePlayerRoute(url: youtubeUrl),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
