import 'package:flutter/material.dart';

class LinearProgressIndicatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        LinearProgressIndicator(),
        CircularProgressIndicator(),
        LinearProgressIndicator(
          value: 0.5,
        ),
      ],
    );
  }
}
