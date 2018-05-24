import 'package:flutter/material.dart';
import 'package:firebase_authentication/api.dart';

import 'dart:async';

class LoginPage extends StatelessWidget {
  Future<bool> _loginUser() async {
    final user = await FirebaseApi.signInWithGoogle();
    if (user != null) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Firebase Demo"),
      ),
      body: new Padding(
        padding: const EdgeInsets.all(20.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new RaisedButton(
              onPressed: () => _handleSignIn(),
              child: new Text("Sign In"),
              color: Colors.green,
            ),
            new Padding(
              padding: const EdgeInsets.all(10.0),
            ),
            new RaisedButton(
              onPressed: _handleSignOut,
              child: new Text("Sign out"),
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }

  _handleSignIn() {
    _loginUser();
  }

  _handleSignOut() {
    if(FirebaseApi.signOutGoogle()){
      print("user sign out!!");
    }
  }
}
