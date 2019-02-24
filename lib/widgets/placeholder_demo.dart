import 'package:flutter/material.dart';

class PlaceholderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Placeholder(
      color: Colors.blue,
      fallbackWidth: 200,
      fallbackHeight: 200,
    );
  }
}
