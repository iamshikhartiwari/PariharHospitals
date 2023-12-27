import 'package:flutter/material.dart';
import 'package:pariharhospital/shared/constant.dart';
const textInputDecoration = InputDecoration(
    labelStyle: TextStyle(color: Colors.black38, fontWeight: FontWeight.w300),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white70,
          // width: ,
        )
    ),
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white,
          // width: 2,
        )
    ),
    errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white,
          // width: 2,
        )
    )
);

void nextScreen(Context,page){
  Navigator.push(Context, MaterialPageRoute(builder: (context) => page));
}

void nextScreenReplace(Context,page){
  Navigator.push(Context, MaterialPageRoute(builder: (context) => page));
}

void showSnackbar(context, color, message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
        style: const TextStyle(fontSize: 14),
      ),
      backgroundColor: color,
      duration: const Duration(seconds: 2),
      action: SnackBarAction(
        label: "OK",
        onPressed: () {},
        textColor: Colors.white,
      ),
    ),
  );
}

Widget TextHeading(String Contect){
  return  Text(Contect,
    style: TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
      color: Constants().primaryColor,
      letterSpacing: 1.5,

    ),
  );
}

Widget ClickableTile(String imgPath, String tileName){
    return GestureDetector(
      onTap: () {
        // Add your onPress action here
        print("Tile Clicked!");
      },
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              imgPath, // Replace with your image asset
              width: 80 * 0.6, // Adjust the image size as needed
              height: 80 * 0.6,
            ),
            SizedBox(height: 8.0),
            Text(
              tileName,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
