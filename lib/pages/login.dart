import 'package:flutter/material.dart';
import 'package:firebase_authentication/api.dart';

import 'dart:async';


class LoginPage extends StatelessWidget {
  Future<bool> _loginUser() async {
    final api = await FirebaseApi.signInWithGoogle();
    if (api != null) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    @override
    Widget build(BuildContext context) {
      return  Scaffold(
        appBar: AppBar(
          title: Text('App Name'),
        ),
        body: Center(
          child:
           Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                 Container(
                   height: 100.0,
               width:100.0,
                  child: FlatButton(onPressed: _handleSignIn(),),
                ),
                 Container(
                   height:100.0,
                 width:50.0,
                 child: FlatButton(onPressed: _handleSignOut(),),
                )
              ]

          ),

        ),

      );
    }


  }

  _handleSignIn() {
    _loginUser();
  }
  _handleSignOut() {
  }
}
