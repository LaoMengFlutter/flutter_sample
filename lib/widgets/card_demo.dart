import 'package:flutter/material.dart';

class CardDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      color: Colors.blue,
      elevation: 5,
      child: Container(
        width: 200,
        height: 200,
      ),
    );
  }

}