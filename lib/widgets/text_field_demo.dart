import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var controller = TextEditingController();
    controller.addListener(() {
      print('controller:${controller.text}');
    });


    // TODO: implement build
    return Column(
      children: <Widget>[
        Column(
          children: <Widget>[
            Text('同一个controller：'),
            TextField(controller: controller,),
            TextField(controller: controller,),
          ],
        ),
        TextField(
          keyboardType: TextInputType.text,
          textCapitalization: TextCapitalization.characters,
        ),
        TextField(
          textAlign: TextAlign.center,
        ),
        TextField(
          textDirection: TextDirection.rtl,
        ),
        TextField(
          obscureText: true,
        ),
        TextField(
          maxLength: 5,
          maxLengthEnforced: true,
        ),
        TextField(
          inputFormatters: [
            WhitelistingTextInputFormatter(RegExp("[a-zA-Z]")),
          ],
        ),
        TextField(
          cursorColor: Colors.red,
          cursorWidth: 5,
          cursorRadius: Radius.circular(10),
        ),
        TextField(
          decoration: InputDecoration(
            icon: Icon(Icons.add),
            labelText: 'label',
          ),
        ),
        TextField(
          decoration: InputDecoration(
            helperText: 'helperText',
            hintText: 'hintText',
          ),
        ),
//        TextField(
//          decoration: InputDecoration(
//            errorText: 'errorText'
//          ),
//        ),
//        TextField(
//          decoration: InputDecoration(
//            prefixText: 'prefixText',
//            prefixIcon: Icon(Icons.add),
//            suffixText: 'suffixText',
//            suffixIcon: Icon(Icons.add),
//            counterText: 'counterText',
//          ),
//        ),
        TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.red,
          ),
        ),
        TextField(
          decoration: InputDecoration(
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
          ),
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.search,
          obscureText: true,
          onChanged: (value) {
            print('onChanged:$value');
          },
          onEditingComplete: () {
            print('onEditingComplete');
          },
          onSubmitted: (value) {
            print('onSubmitted:$value');
          },
          onTap: () {
            print('onTap');
          },
        ),
        TextField(
          enabled: false,
          decoration:
              InputDecoration(icon: Icon(Icons.add), labelText: 'label'),
        ),

      ],
    );
  }
}
