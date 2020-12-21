import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'dart:convert' as JSON;

class HelpScreen extends StatefulWidget {
  static String helpScreen = '/helpScreen';

  @override
  _HelpScreenState createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  bool _isLoggedIn = false;
  Map userProfile;
  final facebookLogin = FacebookLogin();
  FirebaseAuth _auth = FirebaseAuth.instance;

  _loginWithFB() async {
    final result = await facebookLogin.logInWithReadPermissions(['email']);

    switch (result.status) {
      case FacebookLoginStatus.loggedIn:
        final token = result.accessToken.token;
        final graphResponse = await http.get(
            'https://graph.facebook.com/v2.12/me?fields=name,picture,email&access_token=$token');
        final profile = JSON.jsonDecode(graphResponse.body);
        print(profile);
        setState(() {
          userProfile = profile;
          _isLoggedIn = true;
        });
        break;

      case FacebookLoginStatus.cancelledByUser:
        setState(() => _isLoggedIn = false);
        break;
      case FacebookLoginStatus.error:
        setState(() => _isLoggedIn = false);
        break;
    }
  }

  _logoutFB() {
    facebookLogin.logOut();
    setState(() {
      _isLoggedIn = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: _isLoggedIn
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.network(
                      userProfile["picture"]["data"]["url"],
                      height: 50.0,
                      width: 50.0,
                    ),
                    Text(userProfile["name"]),
                    OutlineButton(
                      child: Text("Logout"),
                      onPressed: () {
                        _logoutFB();
                      },
                    )
                  ],
                )
              : Center(
                  child: OutlineButton(
                    child: Text("Login with Facebook"),
                    onPressed: () {
                      _loginWithFB();
                    },
                  ),
                )),
    );
  }
}
