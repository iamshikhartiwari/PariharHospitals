import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pariharhospital/shared/constant.dart';
class AddPostScreen extends StatelessWidget {
  const AddPostScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: (){ },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: Constants().tertiaryColor,
              elevation: 16,
              child: Center(
                child: Icon(
                  Icons.image_outlined,
                  size: 10,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: Constants().tertiaryColor,
              elevation: 16,
              child: Center(
                child: Icon(
                  Icons.font_download_outlined,
                  size: 10,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () { },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: Constants().tertiaryColor,
              elevation: 16,
              child: Center(
                child: Icon(
                  Icons.link_outlined,
                  size: 10,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
