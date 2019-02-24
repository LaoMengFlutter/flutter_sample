import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class CheckboxDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CheckboxDemo();
}

class _CheckboxDemo extends State<CheckboxDemo> {
  bool _newValue = true;
  bool _newValue1;
  bool _newValue2 = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Checkbox(
          value: _newValue,
          activeColor: Colors.red,
          onChanged: (newValue) {
            setState(() {
              _newValue = newValue;
            });
          },
        ),
        Checkbox(
          value: _newValue1,
          onChanged: (newValue) {
            setState(() {
              _newValue1 = newValue;
            });
          },
          tristate: true,
          materialTapTargetSize: MaterialTapTargetSize.padded,
        ),
        CheckboxListTile(
          value: _newValue2,
          onChanged: (newValue) {
            setState(() {
              _newValue2 = newValue;
              timeDilation = 13;
            });
          },
          title: Text('title'),

        ),

        CheckboxListTile(
          activeColor: Colors.red,
          value: _newValue2,
          onChanged: (newValue) {
            setState(() {
              _newValue2 = newValue;
            });
          },
          title: Text('titlettitlettitletitleitletitlettitletitleitletitletitleitle'),
          subtitle: Text('subtitle'),
          isThreeLine: true,
          dense: true,
          secondary: Icon(Icons.hourglass_empty),
          selected: true,
          controlAffinity: ListTileControlAffinity.platform,
        ),
      ],
    );
  }
}
