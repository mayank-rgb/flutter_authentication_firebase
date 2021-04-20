import 'package:authentication_display/provider/google_sign_in.dart';
import 'package:authentication_display/widget/loading_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';

class LoggedInWidget extends StatelessWidget {
  final user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.blueGrey.shade900,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AutoSizeText(
            'User Logged In',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Cinzel',
            ),
          ),
          SizedBox(
            height: 8,
          ),
          CircleAvatar(
            maxRadius: 25,
            backgroundImage: NetworkImage(user.photoURL),
          ),
          SizedBox(
            height: 8,
          ),
          AutoSizeText(
            'Name: ' + user.displayName,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Cinzel',
            ),
          ),
          SizedBox(
            height: 8,
          ),
          AutoSizeText(
            'Email Id: ' + user.email,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Cinzel',
            ),
          ),
          SizedBox(
            height: 8,
          ),
          ElevatedButton(
            onPressed: () {
              final provider =
                  Provider.of<GoogleSignInProvider>(context, listen: false);
              provider.logout();
              LoadingWidget();
            },
            child: Text('Log Out'),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)),
          ),
        ],
      ),
    );
  }
}
