import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sudoku_app/screens/options_screen.dart';

class NewGame extends StatelessWidget {
  static String newGame = '/newGame';
  final Color color = Colors.grey.shade800;

  Expanded numberButtons(int number) {
    return Expanded(
        child: GestureDetector(
      onTap: null,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          height: 45.0,
          width: 5.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Color(0xFFFFFFFF),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2.0,
                  blurRadius: 7.0,
                  offset: Offset(3, 3),
                )
              ]),
          child: Center(
            child: Text(
              number.toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            ),
          ),
        ),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf5f5f5),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
            child: Row(
              children: [
                IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: color,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                Spacer(),
                IconButton(
                    icon: Icon(
                      Icons.pause_outlined,
                      color: color,
                    ),
                    onPressed: null),
                IconButton(
                    icon: Icon(
                      Icons.settings,
                      color: color,
                    ),
                    onPressed: () => Navigator.pushNamed(
                        context, OptionsScreen.optionsScreen)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0, bottom: 2.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Icon(
                  Icons.timer,
                  color: Colors.black,
                ),
                Text(
                  '02.21',
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            alignment: Alignment.topCenter,
            child: Image.asset('images/game.png'),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 6.0),
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    IconButton(
                        icon: Icon(
                          FontAwesomeIcons.undo,
                          color: color,
                        ),
                        onPressed: null),
                    Text('Undo', style: TextStyle(color: Colors.black)),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                        icon: Icon(
                          FontAwesomeIcons.eraser,
                          color: color,
                        ),
                        onPressed: null),
                    Text('Erase', style: TextStyle(color: Colors.black)),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                        icon: Icon(
                          FontAwesomeIcons.pencilAlt,
                          color: color,
                        ),
                        onPressed: null),
                    Text(
                      'Pencil',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                        icon: Icon(
                          FontAwesomeIcons.solidLightbulb,
                          color: color,
                        ),
                        onPressed: null),
                    Text('Hint', style: TextStyle(color: Colors.black)),
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                numberButtons(1),
                numberButtons(2),
                numberButtons(3),
                numberButtons(4),
                numberButtons(5),
                numberButtons(6),
                numberButtons(7),
                numberButtons(8),
                numberButtons(9),
              ],
            ),
          )
        ],
      ),
    );
  }
}
