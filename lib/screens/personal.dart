import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class PersonalScreen extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  Future<User> _signInWithGoogle() async {
    final GoogleSignInAccount googleUser = await googleSignIn.signIn();

    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    final GoogleAuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    UserCredential userCredential =
        await _auth.signInWithCredential(credential);

    print('User name : ${userCredential.user.displayName}');
    User user = userCredential.user;

    return user;
  }

  void _signOut() {
    googleSignIn.signOut();
    print('User Signed Out');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () async {
                try {
                  User user = await _signInWithGoogle();
                  if (user != null) {
                    print('Signed In Successfully $user');
                  }
                } catch (e) {
                  print(e);
                }
              },
              child: Text('Sign In to Google'),
            ),
            RaisedButton(
              onPressed: () {
                _signOut();
              },
              child: Text('Sign Out'),
            ),
            RaisedButton(
              onPressed: null,
              child: Text('Login with facebook'),
            ),
            RaisedButton(
              onPressed: null,
              child: Text('Log Out FB'),
            ),
          ],
        ),
      ),
    );
  }
}
