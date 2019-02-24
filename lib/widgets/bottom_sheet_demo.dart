import 'package:flutter/material.dart';

class BottomSheetDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BottomSheetDemo();
}

class _BottomSheetDemo extends State<BottomSheetDemo> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        RaisedButton(
            child: Text('show bottom sheet'),
            onPressed: () => showBottomSheet(
                context: context,
                builder: (_) => Container(
                      height: 200,
                      width: double.infinity,
                      color: Colors.red,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          RaisedButton(
                              child: Text('确认'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              }),
                          RaisedButton(
                              child: Text('取消'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              })
                        ],
                      ),
                    ))),
      ],
    );
    ;
  }
}
