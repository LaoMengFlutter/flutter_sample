import 'package:flutter/material.dart';

class DrawHeader extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DrawHeader();
  }
}
class _DrawHeader extends State<DrawHeader>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return UserAccountsDrawerHeader(
      accountName: Text('mqd'),
      accountEmail: Text("qq.com"),
    );
  }

}
