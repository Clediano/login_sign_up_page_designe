import 'package:flutter/material.dart';
import 'package:login_sign_up_pages/components/text_field_container.dart';
import 'package:login_sign_up_pages/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final IconData icon;

  const RoundedPasswordField({
    Key key,
    this.icon = Icons.visibility,
    @required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: "Password",
          border: InputBorder.none,
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: Icon(
            icon,
            color: kPrimaryColor,
          ),
        ),
        onChanged: this.onChanged,
      ),
    );
  }
}
