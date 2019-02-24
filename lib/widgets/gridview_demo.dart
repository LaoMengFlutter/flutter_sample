import 'package:flutter/material.dart';

class GridViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var list = <Widget>[];
    for (var i = 0; i < 100; i++) {
      list.add(Container(
        height: 30,
        color: Colors.red,
      ));
    }
    return GridView.count(
      scrollDirection: Axis.vertical,
      crossAxisCount: 3,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      childAspectRatio: 3/4,
      padding: EdgeInsets.all(3),
      children: list,
    );
  }
}
