import 'package:flutter/material.dart';
import 'drawer_header.dart';
import '../widgets/text.dart';

class DrawerItem extends StatelessWidget {

  _onSelectedItem(BuildContext context,String title,Widget widget){

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        DrawHeader(),

        ExpansionTile(
          title: Text('Widgets'),
          children: <Widget>[
            ListTile(
              title: Text('Text'),
              onTap: (){
                _onSelectedItem(context,'Text',TextDemo());
              },
            ),
          ],
        ),

        ExpansionTile(
          title: Text('Widgets2'),
          children: <Widget>[
            ListTile(
              title: Text('Text'),
            ),
          ],
        ),
      ],
    );
  }
}
