import 'package:app2/routes.dart';
import 'package:flutter/material.dart';
import 'package:app2/Screens/start_screen.dart';
import 'package:app2/theme.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, device) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'RVCE Student App',
        theme: CustomTheme().baseTheme,
        initialRoute: StartScreen.routeName,
        routes: routes,
      );
    });
  }
}
