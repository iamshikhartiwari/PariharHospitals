import 'package:flutter/material.dart';
import 'package:pariharhospital/helper/helper_function.dart';
import 'package:pariharhospital/screens/auth/login_screen.dart';
import 'package:pariharhospital/screens/homepage.dart';
import 'package:pariharhospital/shared/constant.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _getvalue = false;
  @override
  void initState() {
    super.initState();
    getUserLoggedInStatus();
  }



  getUserLoggedInStatus() async {
    await HelperFunction.getUserInLoggedInStatus().then((value) {
      if (value != null) {
        _getvalue = value;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Constants().primaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: _getvalue ? HomePage() : LoginScreen(),
    );
  }
}
