import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:pariharhospital/screens/homepage.dart';
import 'package:pariharhospital/shared/constant.dart';
import 'package:pariharhospital/shared/introvideo.dart';
import 'package:pariharhospital/trail.dart';
import 'package:pariharhospital/widgets/widgets.dart';
import 'package:video_player/video_player.dart';
import 'package:pariharhospital/helper/helper_function.dart';
import 'package:mediaquery_sizer/mediaquery_sizer.dart';
import 'Glassmorphism.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formkey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  bool _isLoading = false;
  // AuthService authService = AuthService();
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/images/intro.mp4')
      ..initialize().then((_) {
        setState(() {
          if (!_controller.value.isPlaying) _controller.play();
          _controller.setLooping(true);
          _controller.setVolume(0);
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(240, 236, 229, 1),
        height: MediaQuery.sizeOf(context).height,
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              // alignment: Alignment.center,
              children: <Widget>[
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaY: 5, sigmaX: 5),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    height: MediaQuery.sizeOf(context).height * .3,
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white10.withAlpha(80)),
                      borderRadius: BorderRadius.circular(35),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withAlpha(100),
                          blurRadius: 10.0,
                          spreadRadius: 0.0,
                        ),
                      ],
                      color: Constants().primaryColor,
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 80, 0, 0),
                        child: Text(
                          "Parihar Hospital",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 55, 30, 0),
                  child: Card(
                    // decoration: BoxDecoration(
                    //   border: Border.all(color: Colors.white10.withAlpha(80)),
                    //   borderRadius: BorderRadius.circular(20),
                    //   boxShadow: [
                    //     BoxShadow(
                    //       color: Colors.white.withAlpha(100),
                    //       blurRadius: 10.0,
                    //       spreadRadius: 0.0,
                    //     ),
                    //   ],
                    //   color: Colors.white.withOpacity(0.8),
                    // ),
                    elevation: 50,
                    shadowColor: Constants().secondaryColor,
                    // color: Constants().secondaryColor,
                    child: SizedBox(
                      width: 300,
                      height: 500,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: ClipRect(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(12, 15, 12, 0),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "We care for you ...",
                                    style: TextStyle(
                                        color: Constants().primaryColor,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  TextFormField(
                                    decoration: textInputDecoration.copyWith(
                                        labelText: "Email",
                                        prefix: Icon(
                                          Icons.email,
                                          color: Theme.of(context).primaryColor,
                                        )),
                                    onChanged: (val) {
                                      setState(() {
                                        email = val;
                                      });
                                    },
                                    validator: (val) {
                                      return RegExp(
                                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                              .hasMatch(val!)
                                          ? null
                                          : "Please enter a valid email";
                                    },
                                  ),
                                  SizedBox(height: 10),
                                  TextFormField(
                                    obscureText: true,
                                    decoration: textInputDecoration.copyWith(
                                      labelText: "Password",
                                      prefix: Icon(
                                        Icons.lock,
                                        color: Theme.of(context).primaryColor,
                                      ),
                                    ),
                                    validator: (val) {
                                      if (val!.length < 6) {
                                        return "Password must be greater than 6 characters";
                                      } else
                                        return null;
                                    },
                                    onChanged: (val) {
                                      setState(() {
                                        password = val;
                                      });
                                    },
                                  ),
                                  SizedBox(
                                    height: 60,
                                  ),
                                  SizedBox(
                                    width: double.infinity,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            Theme.of(context).primaryColor,
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                      ),
                                      child: Text(
                                        "Sign In",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 30),
                                      ),
                                      onPressed: () {
                                        // login(formkey);
                                        nextScreen(context, HomeScreen());
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
