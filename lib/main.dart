import 'package:flutter/material.dart';
import 'package:sudoku_app/screens/about.dart';
import 'package:sudoku_app/screens/new_game.dart';
import 'package:sudoku_app/screens/options_screen.dart';
import 'package:sudoku_app/screens/settings_screen.dart';
import 'screens/welcome_screen.dart';
import 'package:splashscreen/splashscreen.dart';
import 'screens/help.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
      routes: {
        WelcomeScreen.welcomeScreen: (context) => WelcomeScreen(),
        NewGame.newGame: (context) => NewGame(),
        HelpScreen.helpScreen: (context) => HelpScreen(),
        AboutScreen.aboutScreen: (context) => AboutScreen(),
        SettingsScreen.settingsScreen: (context) => SettingsScreen(),
        OptionsScreen.optionsScreen: (context) => OptionsScreen(),
      },
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 4,
        navigateAfterSeconds: new WelcomeScreen(),
        title: new Text(
          'SudÖku',
          style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
        ),
        image: new Image.asset('images/SudokuAppSplashScreen.png'),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        onClick: () => print("Flutter"),
        loaderColor: Colors.red);
  }
}
