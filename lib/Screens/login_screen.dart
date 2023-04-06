import 'package:app2/Components/custom_buttons.dart';
import 'package:app2/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:app2/Screens/home_screen.dart';

late bool _passwordVisible;

class LoginScreen extends StatefulWidget {
  static String routeName = 'LoginScreen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formkey = GlobalKey<FormState>();

  @override
  void initState() {
    //TODO: implement initState
    super.initState();
    _passwordVisible = true;
  }

@override
Widget build(BuildContext context) {
  return GestureDetector(
    onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
    child: Scaffold(
      body: Column(
        children: [
          Container(
            width: 100.w,
            height: 35.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Text('Hi Student', style: Theme.of(context).textTheme.titleMedium),
                Text('Sign in to continue', style: Theme.of(context).textTheme.titleSmall),
                sizedBox,
              ],
                ),
            Image.asset('Assets/Images/RV_Logo.jpeg',
              height: 20.h,
              width: 40.w,
            ),
            SizedBox(
              height: KDefaultPadding/2,
              ),
              ],
          ),
          ),
      Expanded(
        child: Container(
          padding: EdgeInsets.only(left: 5.w, right: 5.w),
          decoration: BoxDecoration(
            color: KOtherColor,
            borderRadius: KTopBorderRadius,
            ),
            child: Form(
               key: _formkey,
               child: SingleChildScrollView(
                child: Column(
                  children: [
                    sizedBox,
                    buildEmailField(),
                    sizedBox,
                    buildPasswordField(),
                    sizedBox,
                    Defa
                  ],)),)
            ),)
      )
}
}
