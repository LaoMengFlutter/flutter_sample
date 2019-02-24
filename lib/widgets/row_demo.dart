import 'package:flutter/material.dart';

class RowDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          textDirection: TextDirection.ltr,
          verticalDirection: VerticalDirection.up,
          children: <Widget>[
            Container(
              width: 30,
              height: 30,
              color: Colors.blue,
            ),
            Container(
              width: 30,
              height: 30,
              color: Colors.red,
            ),
            Container(
              width: 30,
              height: 30,
              color: Colors.yellow,
            )
          ],
        ),
        Container(
          width: 40,
          height: 40,
          child: Stack(
            alignment: AlignmentDirectional.center,
            overflow: Overflow.clip,
            children: <Widget>[
              Container(
                width: 80,
                height: 30,
                color: Colors.green,
              ),
              Container(
                width: 30,
                height: 80,
                color: Colors.black,
              )
            ],
          ),
        ),

      ],
    );
  }
}
