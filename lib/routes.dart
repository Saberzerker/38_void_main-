import 'package:app2/Screens/assignment_screen.dart';
import 'package:app2/Screens/calendar_screen.dart';
import 'package:app2/Screens/course_screen.dart';
import 'package:app2/Screens/attendance_screen.dart';
import 'package:app2/Screens/datesheet_screen.dart';
import 'package:app2/Screens/fee_screen.dart';
import 'package:app2/Screens/home_screen.dart';
import 'package:app2/Screens/login_screen.dart';
import 'package:app2/Screens/my_profile_screen.dart';
import 'package:app2/Screens/start_screen.dart';
import 'package:app2/Screens/vl_labs_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:app2/Screens/pdf_screen.dart';

Map<String, WidgetBuilder> routes = {
  StartScreen.routeName: (context) => StartScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  AssignmentScreen.routeName: (context) => AssignmentScreen(),
  CalendarScreen.routeName: (context) => CalendarScreen(),
  CourseScreen.routeName: (context) => CourseScreen(),
  AttendanceScreen.routeName: (context) => AttendanceScreen(),
  DateSheetScreen.routeName: (context) => DateSheetScreen(),
  FeeScreen.routeName: (context) => FeeScreen(),
  MyProfileScreen.routeName: (context) => MyProfileScreen(),
  VLLabsScreen.routeName: (context) => VLLabsScreen(),
  PDFScreen.routeName: (context) => PDFScreen(),
};
