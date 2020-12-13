import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  static String aboutScreen = '/aboutScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.grey.shade400,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          title: Text(
            'About',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Container(
                        height: 150.0,
                        width: 150.0,
                        child: Image.asset('images/playstore.png')),
                  ),
                  Text(
                    'SudÖku',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.blue.shade900,
                      fontSize: 50.0,
                    ),
                  ),
                  Text(
                    'Free Classic Sudoku Puzzles',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17.0,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    'Privacy Policy',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 15.0,
                        color: Colors.black),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      'Terms of Service',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 15.0,
                          color: Colors.black),
                    ),
                  ),
                  Text(
                    'Game Studio',
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
