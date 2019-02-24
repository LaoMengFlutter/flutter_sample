import 'package:flutter/material.dart';

class ExpandedDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Container(height: 30,color: Colors.blue,),
        Expanded(child: Container(height: 30,color: Colors.red,),),
        Container(height: 30,color: Colors.yellow,),
      ],
    );

  }

}