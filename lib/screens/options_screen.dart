import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OptionsScreen extends StatelessWidget {
  static String optionsScreen = '/optionsScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey.shade400,
          elevation: 0.0,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black54,
          ),
          title: Text(
            'Options',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          child: Column(
            children: [
              ListTile(
                leading: Icon(FontAwesomeIcons.crow),
                title: Text('Get Premium'),
              )
            ],
          ),
        ));
  }
}
