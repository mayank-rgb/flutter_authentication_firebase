import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:authentication_display/widget/loading_widget.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:authentication_display/widget/sign_up_widget.dart';

class FacebookLoggedInWidget extends StatefulWidget {
  @override
  _FacebookLoggedInWidgetState createState() => _FacebookLoggedInWidgetState();
}

class _FacebookLoggedInWidgetState extends State<FacebookLoggedInWidget> {
  bool isSignIn = true;
  FirebaseAuth _auth = FirebaseAuth.instance;
  User _user;
  FacebookLogin facebookLogin = FacebookLogin();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 80,
            backgroundImage: NetworkImage(_user.photoURL),
          ),
          Text(
            _user.displayName,
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () async {
              await _auth.signOut().then((onValue) {
                setState(() {
                  facebookLogin.logOut();
                  SignUpWidget();
                  isSignIn = false;
                });
              });
              LoadingWidget();
            },
            child: Text('Log Out'),
          ),
        ],
      ),
    );
  }
}
