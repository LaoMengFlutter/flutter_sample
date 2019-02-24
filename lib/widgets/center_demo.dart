import 'package:flutter/material.dart';

class CenterDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Center(
          heightFactor: 2,
          child: Container(
            height: 100,
            width: 100,
            color: Colors.red,
          ),
        ),
        Container(
          height: 100,
          width: 100,
          color: Colors.blue,
        )
      ],
    );
  }
}
