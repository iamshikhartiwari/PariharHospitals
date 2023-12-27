import 'package:flutter/material.dart';
import 'package:pariharhospital/screens/addpostscreen.dart';
import 'package:pariharhospital/widgets/widgets.dart';
import 'package:pariharhospital/shared/constant.dart';
import 'package:pariharhospital/screens/rajasthan.dart';

class ListofHospitals extends StatelessWidget {
  List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      
        body: Column(
          children: [
            
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [

                    SizedBox(
                      height: 15,
                    ),

                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: TextHeading("List of Hospitals "),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Add your onPress action her
                            nextScreen(context, AddPostScreen());
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
                                  "NIMS Hospital",
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
                                  "MG Hospital",
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
                                  "H1",
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
                                  "H2",
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
                                  "H 3",
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
                                  "H4",
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
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   crossAxisAlignment: CrossAxisAlignment.center,
                    //   children: [
                    //     GestureDetector(
                    //       onTap: () {
                    //         // Add your onPress action here
                    //         print("Tile Clicked!");
                    //       },
                    //       child: Container(
                    //         width: 100,
                    //         height: 100,
                    //         decoration: BoxDecoration(
                    //           border: Border.all(color: Colors.black),
                    //         ),
                    //         child: Column(
                    //           mainAxisAlignment: MainAxisAlignment.center,
                    //           crossAxisAlignment: CrossAxisAlignment.center,
                    //           children: [
                    //             Image.asset(
                    //               "imgpath", // Replace with your image asset
                    //               width:
                    //               80 * 0.6, // Adjust the image size as needed
                    //               height: 80 * 0.6,
                    //             ),
                    //             SizedBox(height: 8.0),
                    //             Text(
                    //               "Haryana  ",
                    //               style: TextStyle(
                    //                 fontSize: 16.0,
                    //                 fontWeight: FontWeight.bold,
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //       ),
                    //     ),
                    //     SizedBox(
                    //       width: 15,
                    //     ),
                    //     GestureDetector(
                    //       onTap: () {
                    //         // Add your onPress action here
                    //         print("Tile Clicked!");
                    //       },
                    //       child: Container(
                    //         width: 100,
                    //         height: 100,
                    //         decoration: BoxDecoration(
                    //           border: Border.all(color: Colors.black),
                    //         ),
                    //         child: Column(
                    //           mainAxisAlignment: MainAxisAlignment.center,
                    //           crossAxisAlignment: CrossAxisAlignment.center,
                    //           children: [
                    //             Image.asset(
                    //               "imgpath", // Replace with your image asset
                    //               width:
                    //               80 * 0.6, // Adjust the image size as needed
                    //               height: 80 * 0.6,
                    //             ),
                    //             SizedBox(height: 8.0),
                    //             Text(
                    //               "Tamil Nadu",
                    //               style: TextStyle(
                    //                 fontSize: 16.0,
                    //                 fontWeight: FontWeight.bold,
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //       ),
                    //     ),
                    //     SizedBox(
                    //       width: 15,
                    //     ),
                    //     GestureDetector(
                    //       onTap: () {
                    //         // Add your onPress action here
                    //         print("Tile Clicked!");
                    //       },
                    //       child: Container(
                    //         width: 100,
                    //         height: 100,
                    //         decoration: BoxDecoration(
                    //           border: Border.all(color: Colors.black),
                    //         ),
                    //         child: Column(
                    //           mainAxisAlignment: MainAxisAlignment.center,
                    //           crossAxisAlignment: CrossAxisAlignment.center,
                    //           children: [
                    //             Image.asset(
                    //               "imgpath", // Replace with your image asset
                    //               width:
                    //               80 * 0.6, // Adjust the image size as needed
                    //               height: 80 * 0.6,
                    //             ),
                    //             SizedBox(height: 8.0),
                    //             Text(
                    //               "Kerala",
                    //               style: TextStyle(
                    //                 fontSize: 16.0,
                    //                 fontWeight: FontWeight.bold,
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //       ),
                    //     ),
                    //     SizedBox(
                    //       width: 15,
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
