import 'package:flutter/material.dart';

class ExpansionPanelDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ExpansionPanelDemo();
}

class _ExpansionPanelDemo extends State<ExpansionPanelDemo> {
  int _index = -1;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      child: ExpansionPanelList(
        expansionCallback: (index, isExpanded) {
          print('index:$index,isExpanded:$isExpanded');
          setState(() {
            if (!isExpanded) {
              _index = index;
            } else {
              _index = -1;
            }
          });
        },
        children: <ExpansionPanel>[
          ExpansionPanel(
              headerBuilder: (context, isExpanded) => Text('header'),
              body: ListBody(
                children: <Widget>[
                  Text('1'),
                  Text('1'),
                  Text('1'),
                ],
              ),
              isExpanded: _index == 0),
          ExpansionPanel(
              headerBuilder: (context, isExpanded) => Text('header'),
              body: ListBody(
                children: <Widget>[
                  Text('1'),
                  Text('1'),
                  Text('1'),
                ],
              ),
              isExpanded: _index == 1),
        ],
      ),
    );
  }
}
