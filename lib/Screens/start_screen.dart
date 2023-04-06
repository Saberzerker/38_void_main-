import 'package:app2/Screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:app2/constants.dart';

class StartScreen extends StatefulWidget {
  static String routeName = 'StartScreen';

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushNamedAndRemoveUntil(
          context, LoginScreen.routeName, (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('RVCE', style: Theme.of(context).textTheme.headlineSmall),
                Text('Student App',
                    style: Theme.of(context).textTheme.headlineSmall),
              ],
            ),
            Image.asset(
              'Assets/Images/RV_Logo.jpeg',
              height: 25.h,
              width: 50.w,
            ),
          ],
        ),
      ),
    );
  }
}
