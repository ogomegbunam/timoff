import 'package:flutter/material.dart';
import 'package:timoff/apply_for_leave.dart';
import 'package:timoff/code_verification.dart';
import 'package:timoff/const.dart';
import 'package:timoff/dashboard.dart';
import 'package:timoff/leave_history.dart';
import 'package:timoff/leave_status.dart';
import 'package:timoff/log_in.dart';
import 'package:timoff/reset_password.dart';
import 'package:timoff/set_new_password.dart';
import 'package:timoff/staffs_on_leave.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primaryColor: kactive,
        focusColor: kactive,


      ),
      home: const HomeScreen(),
      routes: {
        '/leave_status': (ctx) => LeaveStatus(),
        '/leave_history': (ctx) => LeaveHistory(),
        '/staffs_on_leave': (ctx) => StaffsOnLeave(),
        '/leave_application': (ctx) => LeaveApplication(),
        '/log_in': (ctx) => Login(),
        '/reset_password': (ctx) => ResetPassword(),
        '/code_verification': (ctx) => CodeVerification(),
        '/home': (ctx) => HomeScreen(),
      },
    );
  }
}


