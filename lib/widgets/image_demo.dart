import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class ImageDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ImageFileDemo();
  }
}

class ImageFileDemo extends State<ImageDemo> {
  String _storageDir = '';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    _getLocalFile();
    return Column(
      children: <Widget>[
        Image.network(
          'http://pic1.win4000.com/pic/c/cf/cdc983699c.jpg',
          width: 200,
          height: 200,
        ),
        Image.asset(
          'images/1.png',
          width: 300,
          height: 160,
        ),
        Image.asset(
          'images/2.png',
          width: 300,
          height: 160,
        ),
        Image.file(
          File('$_storageDir/1.png'),
          width: 300,
          height: 160,
        ),
        Icon(Icons.android),
      ],
    );
  }

  _getLocalFile() async {
    String appDir = (await getApplicationDocumentsDirectory()).path;
    String tempDir = (await getTemporaryDirectory()).path;
    String storageDir = (await getExternalStorageDirectory()).path;
    setState(() {
      _storageDir = storageDir;
    });
    return storageDir;
  }
}
