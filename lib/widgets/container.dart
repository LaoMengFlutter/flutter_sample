import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Container(
      width: 300,
      height: 100,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
//          color: Color(0x330000FF),

          border:
              Border.all(color: Colors.red, width: 2, style: BorderStyle.solid),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [BoxShadow(color: Colors.blue, offset: Offset(5, 5))],
          gradient: LinearGradient(colors: [Colors.blue, Colors.yellow]),
          backgroundBlendMode: BlendMode.srcATop,
          shape: BoxShape.rectangle),
      foregroundDecoration: FlutterLogoDecoration(),
      transform: Matrix4.rotationZ(1),
      child: new Text(
        "TextDirection.rtl topStart",
        textDirection: TextDirection.rtl,
        style: TextStyle(),
      ),
      alignment: AlignmentDirectional.topStart,
    ));
  }
}
