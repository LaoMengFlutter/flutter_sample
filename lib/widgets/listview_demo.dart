import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemExtent: 80,
        itemCount: 10000,
        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.center,
            color: index % 2 == 0 ? Colors.red : Colors.blue,
            child: Text(index.toString()),
          );
        });
  }
}
