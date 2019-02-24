import 'package:flutter/material.dart';

class AspectRatioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 5 / 4,
          child: Container(
            color: Colors.red,
          ),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(minHeight: 80),
          child: Container(
            height: 30,
            color: Colors.blue,
          ),
        ),

      ],
    );
  }
}
