import 'package:flutter/material.dart';

class ChipDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Chip(
          label: Text('label'),
        ),
        Chip(
          label: Text('label'),
          avatar: CircleAvatar(
            backgroundImage: AssetImage('images/1.png'),
          ),
        ),
        Chip(
          label: Text('label'),
          deleteIcon: Icon(Icons.delete),
          onDeleted: (){},
          deleteIconColor: Colors.blue,
          deleteButtonTooltipMessage: '敢删除我吗？',
        ),

        InputChip(
          label: Text('InputChip'),
          onPressed: (){},
        ),
        ChoiceChip(
          label: Text('ChoiceChip'),
          selected: true,
        ),
      ],
    );
  }

}