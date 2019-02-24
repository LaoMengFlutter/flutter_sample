import 'package:flutter/material.dart';

class AppBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
        title: Text('AppBar'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.add), onPressed: () {}),
          IconButton(icon: Icon(Icons.dashboard), onPressed: () {}),
          IconButton(icon: Icon(Icons.cached), onPressed: () {}),
        ],
        flexibleSpace: Container(
          color: Colors.red,
        ),
        bottom: PreferredSize(
          child: Container(
            height: 50,
            width: double.infinity,
            color: Colors.grey,
            child: Text('bottom'),
          ),
          preferredSize: Size(30, 100),
        ),
      ),
    );
  }
}
