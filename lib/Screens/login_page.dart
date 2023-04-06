import 'package:flutter/material.dart';

//Hex/#code of colors to ARGB values
Color hexToColor(String hexString, {String alphaChannel = 'FF'}) {
  return Color(int.parse(hexString.replaceFirst('#', '0x$alphaChannel')));
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: hexToColor('#C0B1F1'),
      body: Column(
        children: [
          //logo
          Container(
            height: 40.0,
            width: 40.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: hexToColor('#FFB38C'),
              image: const DecorationImage(
                  image: AssetImage('lib/images/logo1.png'),
                  alignment: Alignment.center),
            ),
          ),
        ],
      ),
      //user name text field

      //password textfield

      //forgot password

      //sign in

      //or continut with

      //google + facebook sign in button

      //Sign Up
    );
  }
}
