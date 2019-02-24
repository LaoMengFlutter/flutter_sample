import 'package:flutter/material.dart';

class ExpansionTileDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ExpansionTile(
      leading: CircleAvatar(
        backgroundColor: Colors.red,
        radius: 20,
      ),
      title: Text('group name'),
      children: <Widget>[
        Text('1'),
        Text('1'),
        Text('1'),
        Text('1'),
        Text('1'),
      ],
    );
  }
}
