import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sudoku_app/services/welcome_screen_buttons.dart';
import '../screens/new_game.dart';
import '../screens/help.dart';

class WelcomeScreenUI extends StatefulWidget {
  @override
  _WelcomeScreenUIState createState() => _WelcomeScreenUIState();
}

class _WelcomeScreenUIState extends State<WelcomeScreenUI> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Container(
              child: Image.asset('images/SudokuAppSplashScreen.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 45.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  'SudÖku',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.blue.shade900,
                    fontSize: 60.0,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50.0),
            child: Column(
              children: [
                WelcomeScreenButtons(
                  text: 'RESUME',
                  onPressed: () {
                    Navigator.pushNamed(context, NewGame.newGame);
                  },
                ),
                WelcomeScreenButtons(
                  text: 'NEW GAME',
                  onPressed: () {
                    Navigator.pushNamed(context, NewGame.newGame);
                  },
                ),
                WelcomeScreenButtons(
                  text: 'OPTIONS',
                  onPressed: () {
                    Navigator.pushNamed(context, HelpScreen.helpScreen);
                  },
                ),
                WelcomeScreenButtons(
                  text: 'EXIT',
                  onPressed: () {
                    SystemNavigator.pop();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
