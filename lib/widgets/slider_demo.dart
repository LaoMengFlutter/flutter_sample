import 'package:flutter/material.dart';

class SliderDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SliderDemo();
}

class _SliderDemo extends State<SliderDemo> {
  double _value = 0;
  int _dollars = 20;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Slider(
          value: _value,
          onChanged: (newValue) {
            print('onChanged:$newValue');
            setState(() {
              _value = newValue;
            });
          },
          onChangeStart: (startValue) {
            print('onChangeStart:$startValue');
          },
          onChangeEnd: (endValue) {
            print('onChangeEnd:$endValue');
          },
          label: '$_value dollars',
          divisions: 5,
          semanticFormatterCallback: (newValue) {
            return '${newValue.round()} dollars';
          },
        ),
        Slider(
            value: _dollars.toDouble(),
            min: 20.0,
            max: 330.0,
            label: '$_dollars dollars',
            onChanged: (double newValue) {
              setState(() {
                _dollars = newValue.round();
              });
            },
            semanticFormatterCallback: (double newValue) {
              return '${newValue.round()} dollars';
            }),

      ],
    );
  }
}
