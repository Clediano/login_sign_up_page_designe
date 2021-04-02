import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_sign_up_pages/components/already_have_an_account_check.dart';
import 'package:login_sign_up_pages/components/rounded_button.dart';
import 'package:login_sign_up_pages/components/rounded_input_field.dart';
import 'package:login_sign_up_pages/components/rounded_password_field.dart';
import 'package:login_sign_up_pages/screens/login/login_screen.dart';
import 'package:login_sign_up_pages/screens/signup/components/or_divider.dart';
import 'package:login_sign_up_pages/screens/signup/components/social_icon.dart';
import 'package:login_sign_up_pages/screens/welcome/components/background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            // SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your best e-mail",
              onChanged: (String value) {},
            ),
            RoundedPasswordField(
              onChanged: (String value) {},
            ),
            RoundedButton(
              text: "SIGNUP",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return LoginScreen();
                  }),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  onTap: () {},
                ),
                SocialIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  onTap: () {},
                ),
                SocialIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  onTap: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
