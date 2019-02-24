import 'package:flutter/material.dart';

class SwitchDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SwitchDemo();
}

class _SwitchDemo extends State<SwitchDemo> {
  bool _value = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Switch(
          value: _value,
          onChanged: (newValue) {
            setState(() {
              _value = newValue;
            });
          },
          activeColor: Colors.red,
          activeTrackColor:Colors.black,
          inactiveThumbColor:Colors.green,
          inactiveTrackColor: Colors.blue,
          activeThumbImage: AssetImage(
            'images/1.png',
          ),
        ),
      ],
    );
  }
}
