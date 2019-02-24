import 'package:flutter/material.dart';

class ScaffoldDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('AppBar'),),
      body: Container(
//        color: Colors.grey,
        child: Text('body'),
        alignment: Alignment.center,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text('draw header'),
            ),
            ListTile(title: Text("draw item 1"),),
            ListTile(title: Text("draw item 2"),),
            ListTile(title: Text("draw item 3"),),
            ListTile(title: Text("draw item 4"),),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Text('+'),),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      persistentFooterButtons:List.generate(3, (index){
        return RaisedButton(onPressed: (){},child: Text("$index"),textColor: Colors.red,);
      }),
      bottomNavigationBar: Row(
        children: <Widget>[
          Expanded(
            child: RaisedButton(onPressed: (){},child: Text("微信"),),
            flex: 1,
          ),
          Expanded(
            child: RaisedButton(onPressed: (){},child: Text("通讯录"),),
            flex: 1,
          ),
          Expanded(
            child: RaisedButton(onPressed: (){},child: Text("发现"),),
            flex: 1,
          ),
          Expanded(
            child: RaisedButton(onPressed: (){},child: Text("我"),),
            flex: 1,
          ),
        ],
      ),
      bottomSheet: RaisedButton(onPressed: (){},child: Text('bottomSheet'),),

    );
  }

}