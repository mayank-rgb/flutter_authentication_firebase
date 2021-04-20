import 'package:authentication_display/widget/google_sign_up_widget.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:authentication_display/provider/login_with_facebook.dart';

class SignUpWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => buildSignUp();

  Widget buildSignUp() {
    return Column(
      children: [
        Spacer(),
        Center(
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              width: 180,
              child: AutoSizeText(
                'Social Integration App',
                maxLines: 3,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 27,
                  fontFamily: 'Cinzel',
                ),
              ),
            ),
          ),
        ),
        Spacer(),
        GoogleSignUpButtonWidget(),
        LoginWithFacebook(),
        SizedBox(
          height: 12,
        ),
        AutoSizeText(
          'Login To Continue',
          style: TextStyle(
            fontFamily: 'Cinzel',
            fontSize: 16,
          ),
        ),
        Spacer(),
      ],
    );
  }
}
