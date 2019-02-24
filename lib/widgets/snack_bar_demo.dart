import 'package:flutter/material.dart';

class SnackBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SnackBarDemo();
}


class _SnackBarDemo extends State<SnackBarDemo> {

  _getSnackBar() {
    return SnackBar(
      content: Text('这是SnackBar'),
      backgroundColor: Colors.red,
      action: SnackBarAction(label: '确认', onPressed: (){}),
      duration: Duration(milliseconds: 1000),

    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      child: Text('SnackBar'),
      onPressed: () {
        Scaffold.of(context).showSnackBar(_getSnackBar());
      },
    );
  }

}