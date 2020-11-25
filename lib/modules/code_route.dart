import 'package:flutter/material.dart';
import 'package:flutter_geeks/widgets/app_bar.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

class CodeRoute extends StatefulWidget {
  const CodeRoute({
    Key key,
    this.child,
    this.filePath,
    this.url,
  }) : super(key: key);

  final Widget child;
  final String filePath;
  final String url;

  @override
  _CodeRouteState createState() => _CodeRouteState();
}

class _CodeRouteState extends State<CodeRoute> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Expanded'),
      body: SafeArea(
        child: Theme(
          data: ThemeData(
            primarySwatch: Colors.green,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          child: WidgetWithCodeView(
            child: widget.child,
            sourceFilePath: widget.filePath,
            // codeLinkPrefix: 'https://github.com/<my_username>/<my_project>/blob/master/',
            // codeLinkPrefix: widget.url,
          ),
        ),
      ),
    );
  }
}
