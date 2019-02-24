import 'package:flutter/material.dart';

class TooltipDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Tooltip(
          message: '删除',
//          preferBelow: false,
//          excludeFromSemantics: true,
          child: Icon(Icons.delete),
        ),
      ],
    );
  }

}