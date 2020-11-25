import 'package:flutter/material.dart';

class DemoExpanded extends StatefulWidget {
  @override
  _DemoExpandedState createState() => _DemoExpandedState();
}

class _DemoExpandedState extends State<DemoExpanded> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          /// Horizontal
          Row(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.amber,
                  height: 100,
                ),
              ),
              Container(
                color: Colors.redAccent,
                height: 100,
                width: 50,
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.amber,
                  height: 100,
                ),
              ),
            ],
          ),

          /// Vertical
          Container(
            color: Colors.deepPurpleAccent,
            height: 100,
            width: 100,
          ),
          Expanded(
            child: Container(
              color: Colors.amberAccent,
              width: 100,
            ),
          ),
          Container(
            color: Colors.deepPurpleAccent,
            height: 100,
            width: 100,
          ),
        ],
      ),
    );
  }
}
