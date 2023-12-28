import 'package:flutter/material.dart';
import 'package:pariharhospital/shared/constant.dart';
import 'package:pariharhospital/widgets/widgets.dart';

class UserMenu extends StatefulWidget {
  const UserMenu({super.key});

  @override
  State<UserMenu> createState() => _UserMenuState();
}

class _UserMenuState extends State<UserMenu> {
  @override
  Widget build(BuildContext context) {
    // Replace this with your list of districts

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.lightBlue, Colors.white],
                  ),
                ),
              ),

            ),
          ),
          SliverFillRemaining(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  UserMenuTile(Icons.account_circle_rounded, "My Profile"),
                  UserMenuTile(Icons.account_circle_rounded, "My Account"),
                  UserMenuTile(Icons.supervisor_account_rounded, "Nominee"),
                  UserMenuTile(Icons.settings_overscan, "Scan QR"),
                  UserMenuTile(Icons.electric_bolt_outlined, "My Activity"),
                  UserMenuTile(Icons.cases, "Services"),
                  UserMenuTile(Icons.settings, "Settings"),
                  UserMenuTile(Icons.question_mark_rounded, "Help"),
                  UserMenuTile(Icons.headset_mic_rounded, "Raise Query"),
                  UserMenuTile(Icons.info_outline_rounded, "About"),
              
                  UserMenuTile(Icons.logout_rounded, "LogOut"),
              
              
              
                ],
              ),
            )
          ),
        ],
      ),
    );
  }
}
