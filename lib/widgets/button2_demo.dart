import 'package:flutter/material.dart';

class Button2Demo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Button2Demo();
  }
}

class _Button2Demo extends State<Button2Demo> {
  List<String> _colors = <String>['pink', 'red', 'green', 'blue', 'orange'];
  String _color;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      _color = null;
//      _color = _colors[0]; //_color='pink'
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            IconButton(
              iconSize: 30,
              icon: Icon(Icons.ac_unit),
              onPressed: () {},
              tooltip: 'tooltip',
            ),
            FloatingActionButton(
              onPressed: () {},
              child: Text('你好'),
              foregroundColor: Colors.red,
              backgroundColor: Colors.green,
            ),
          ],
        ),
        Column(
          children: <Widget>[
            DropdownButton<String>(
              value: _color,
              isDense: true,
              isExpanded: true,
              hint: Text('请选择'),
              onChanged: (String newValue) {
                setState(() {
                  _color = newValue;
                });
              },
              items: _colors.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            RawMaterialButton(
              onPressed: (){},
              child: Text('RawMaterialButton'),
            ),
            RawMaterialButton(
              onPressed: (){},
              fillColor: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Text('RawMaterialButton'),
            ),
          ],
        ),

      ],
    );
  }
}
