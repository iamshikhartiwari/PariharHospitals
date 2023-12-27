import 'package:flutter/material.dart';
import 'package:pariharhospital/widgets/widgets.dart';
import 'package:pariharhospital/shared/constant.dart';
import 'package:pariharhospital/screens/rajasthan.dart';

class ExploreScreen extends StatefulWidget {
  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: double.infinity,
          height: 40,
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search...',
              contentPadding: EdgeInsets.all(10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 100, // Adjust the height as needed
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 150, // Adjust the width as needed
                  margin: EdgeInsets.all(8),

                  color: Constants().tertiaryColor,
                  child: Center(
                    child: Text(
                      items[index],
                      style: TextStyle(color: Constants().primaryColor),
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                    child: TextHeading("New Documents "),
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
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: TextHeading("States "),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Add your onPress action her
                          nextScreen(context, ListofDistricts());
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
                                "imgpath", // Replace with your image asset
                                width:
                                    80 * 0.6, // Adjust the image size as needed
                                height: 80 * 0.6,
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                "Rajasthan",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      GestureDetector(
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
                                "imgpath", // Replace with your image asset
                                width:
                                    80 * 0.6, // Adjust the image size as needed
                                height: 80 * 0.6,
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                "Uttar Pradesh",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      GestureDetector(
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
                                "imgpath", // Replace with your image asset
                                width:
                                    80 * 0.6, // Adjust the image size as needed
                                height: 80 * 0.6,
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                "Delhi",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
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
                                "imgpath", // Replace with your image asset
                                width:
                                    80 * 0.6, // Adjust the image size as needed
                                height: 80 * 0.6,
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                "Bihar",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      GestureDetector(
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
                                "imgpath", // Replace with your image asset
                                width:
                                    80 * 0.6, // Adjust the image size as needed
                                height: 80 * 0.6,
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                "J & K",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      GestureDetector(
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
                                "imgpath", // Replace with your image asset
                                width:
                                    80 * 0.6, // Adjust the image size as needed
                                height: 80 * 0.6,
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                "Jharkhand",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
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
                                "imgpath", // Replace with your image asset
                                width:
                                    80 * 0.6, // Adjust the image size as needed
                                height: 80 * 0.6,
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                "Haryana  ",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      GestureDetector(
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
                                "imgpath", // Replace with your image asset
                                width:
                                    80 * 0.6, // Adjust the image size as needed
                                height: 80 * 0.6,
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                "Tamil Nadu",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      GestureDetector(
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
                                "imgpath", // Replace with your image asset
                                width:
                                    80 * 0.6, // Adjust the image size as needed
                                height: 80 * 0.6,
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                "Kerala",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
