import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sudoku_app/screens/about.dart';

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
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                  elevation: 0.0,
                  child: ListTile(
                    leading: Icon(
                      FontAwesomeIcons.crown,
                      color: Colors.black87,
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                    title: Text(
                      'Get Premium',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 83.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        'Remove all Ads',
                        style: TextStyle(color: Colors.grey.shade600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        'Unlimited Hints',
                        style: TextStyle(color: Colors.grey.shade600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        'Unlimited Second chance',
                        style: TextStyle(color: Colors.grey.shade600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        'Unlimited Fast Pencil',
                        style: TextStyle(color: Colors.grey.shade600),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 20.0, right: 20.0, top: 10.0, bottom: 4.0),
                child: FlatButton(
                    minWidth: double.infinity,
                    disabledColor: Colors.blue.shade900,
                    onPressed: null,
                    child: Text(
                      'SUBSCRIBE',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              Divider(color: Colors.black87),
              cardWidget(
                iconName: Icons.settings,
                text: 'Settings',
                onPressed: () {},
              ),
              cardWidget(
                iconName: FontAwesomeIcons.chartBar,
                text: 'Statistics',
                onPressed: () {},
              ),
              cardWidget(
                iconName: Icons.bookmark,
                text: 'How to Play',
                onPressed: () {},
              ),
              Divider(color: Colors.black87),
              cardWidget(
                iconName: FontAwesomeIcons.commentAlt,
                text: 'Feedback',
                onPressed: () {},
              ),
              cardWidget(
                iconName: FontAwesomeIcons.exclamationCircle,
                text: 'About',
                onPressed: () {
                  Navigator.pushNamed(context, AboutScreen.aboutScreen);
                },
              ),
            ],
          ),
        ));
  }
}

class cardWidget extends StatelessWidget {
  final IconData iconName;
  final String text;
  final Function onPressed;

  cardWidget(
      {@required this.iconName, @required this.text, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: ListTile(
        leading: Icon(
          iconName,
          color: Colors.black87,
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
        title: Text(
          text,
          style: TextStyle(fontSize: 18.0),
        ),
      ),
    );
  }
}
