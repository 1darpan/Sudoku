import 'package:flutter/material.dart';

class WelcomeScreenButtons extends StatelessWidget {
  final String text;
  final Function onPressed;

  WelcomeScreenButtons({@required this.text, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 16.0),
      child: Material(
        color: Colors.lightBlueAccent,
        elevation: 8.0,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          minWidth: 200.0,
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 17.0,
            ),
          ),
        ),
      ),
    );
  }
}
