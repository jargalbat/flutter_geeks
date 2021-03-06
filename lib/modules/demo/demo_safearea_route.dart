import 'package:flutter/material.dart';
import 'package:flutter_geeks/widgets/app_bar.dart';

class DemoSafeAreaRoute extends StatefulWidget {
  @override
  _DemoSafeAreaRouteState createState() => _DemoSafeAreaRouteState();
}

class _DemoSafeAreaRouteState extends State<DemoSafeAreaRoute> {
  final _safeAreaKey = GlobalKey<ScaffoldState>();
  String _text =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Commodo sed egestas egestas fringilla. Aliquam etiam erat velit scelerisque in. Ut sem nulla pharetra diam sit.';
  bool _isSelectedSafeArea = false;
  bool _isSelectedAppBar = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// Back
        Scaffold(
          appBar: _isSelectedAppBar
              ? CustomAppBar(
                  backgroundColor: Colors.green,
                  title: 'AppBar',
                )
              : null,
          key: _safeAreaKey,
          backgroundColor: Colors.green,
          body: _isSelectedSafeArea
              ? SafeArea(
                  child: _body(),
                )
              : _body(),
        ),

        /// Front
        Container(
          margin: EdgeInsets.only(top: 100.0),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /// App bar
                CheckboxListTile(
                  title: Text("AppBar"),
                  value: _isSelectedAppBar,
                  onChanged: (newValue) {
                    setState(() {
                      _isSelectedAppBar = newValue;
                    });
                  },
                  controlAffinity: ListTileControlAffinity.leading,
                ),
                SizedBox(width: 10.0),

                /// Safe area
                CheckboxListTile(
                  title: Text("SafeArea"),
                  value: _isSelectedSafeArea,
                  onChanged: (newValue) {
                    setState(() {
                      _isSelectedSafeArea = newValue;
                    });
                  },
                  controlAffinity: ListTileControlAffinity.leading,
                ),

                SizedBox(height: 100.0),
              ],
            ),
            floatingActionButton: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // FloatingActionButton(
                //   child: Icon(Icons.code),
                //   onPressed: () => Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => CodeRoute(codeId: CodeId.safeArea)),
                //   ),
                // ),
                SizedBox(height: 15.0),
                FloatingActionButton(
                  child: Icon(Icons.arrow_back_ios_sharp),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _body() {
    return Column(
      children: [
        Text(_text),
        Spacer(),
        Text(_text),
      ],
    );
  }
}
