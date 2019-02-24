import 'package:flutter/material.dart';

class FirstWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FirstWidget();
  }
}

class _FirstWidget extends State<FirstWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        ExpansionTile(
          title: Text('group'),
          children: <Widget>[
            Column(
              children: <Widget>[
                Text('1'),
                Text('1'),
                Text('1'),
              ],
            ),
          ],
        ),
        ExpansionTile(
          title: Text('group'),
          children: <Widget>[
            Column(
              children: <Widget>[
                Text('1'),
                Text('1'),
                Text('1'),
              ],
            ),
          ],
        ),
        ExpansionTile(
          title: Text('group'),
          children: <Widget>[
            Column(
              children: <Widget>[
                Text('1'),
                Text('1'),
                Text('1'),
              ],
            ),
          ],
        ),
        ExpansionTile(
          title: Text('group'),
          children: <Widget>[
            Column(
              children: <Widget>[
                Text('1'),
                Text('1'),
                Text('1'),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
