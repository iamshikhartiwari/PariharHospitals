import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:pariharhospital/shared/constant.dart';
import 'package:mediaquery_sizer/mediaquery_sizer.dart';
import 'package:pariharhospital/widgets/widgets.dart';
import 'package:pariharhospital/screens/explorescreen.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isToggled = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            toolbarHeight: 100,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(25),
                  bottomLeft: Radius.circular(25)),
            ),
            elevation: 0.00,
            backgroundColor: Constants().primaryColor,
            title: Row(
              children: [
                // User Profile Pic and Name
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/defaultprofile.png'),
                    // Replace with the actual path or network URL
                  ),
                ),
                Text(
                  'Monkey D. Luffy',
                  style: TextStyle(
                    color: Constants().tertiaryColor,
                  ),
                ), // Replace with the actual user name
              ],
            ),
            actions: [
              // Bell Icon Button
              IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Constants().tertiaryColor,
                ),
                onPressed: () {
                  // Handle bell icon button press
                },
              ),
            ],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Toggle Button
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FlutterSwitch(
                        value: isToggled,
                        onToggle: (bool value) {
                          value != value;
                        },
                      )),
                  // App Version
                  // Padding(
                  //   padding: const EdgeInsets.only(right: 8.0),
                  //   child: Text('v1.0'), // Replace with the actual app version
                  // ),
                ],
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                Center(
                  child: TextHeading("Documents you might need"),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClickableTile("a", "doc1"),
                    SizedBox(
                      width: 15,
                    ),
                    ClickableTile("a", "doc1"),
                    SizedBox(
                      width: 15,
                    ),
                    ClickableTile("a", "doc1"),
                    SizedBox(
                      width: 15,
                    ),
                  ],
                ),
                SizedBox(height: 30,),
                Center(
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
                      "Explore more",
                      style: TextStyle(
                          color: Colors.white, fontSize: 30),
                    ),
                    onPressed: () {
                      // login(formkey);
                      nextScreen(context, ExploreScreen());
                    },
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
