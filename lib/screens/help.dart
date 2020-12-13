import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  static String helpScreen = '/helpScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Text(
        'Help Screen',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
