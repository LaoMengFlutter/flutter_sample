import 'package:flutter/material.dart';

class MaterialAppDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MaterialAppDemo();
}

class _MaterialAppDemo extends State<MaterialAppDemo> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'MaterialApp',
      home: _HomePage(),
      initialRoute: 'find',
      routes: {
        'home':(context)=>_HomePage(),
        'find':(context)=>_FindPage(),
        'my':(context)=>_MyPage(),
      },
    );
  }
}

class _HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text('Home'),
    );
  }
}
class _FindPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text('Find'),
    );
  }
}
class _MyPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text('My'),
    );
  }
}