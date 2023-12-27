import 'package:flutter/material.dart';
import 'package:pariharhospital/screens/rajasthan.dart';
import 'package:pariharhospital/shared/constant.dart';
import 'package:pariharhospital/widgets/widgets.dart';
import 'package:pariharhospital/screens/jaipur.dart';

class ListofDistricts extends StatelessWidget {
  final List<String> rajasthanDistricts = [
    'Jaipur',
    'Ajmer',
    'Alwar',
    'Banswara',
    'Baran',
    'Barmer',
    'Bharatpur',
    'Bhilwara',
    'Bikaner',
    'Bundi',
    'Hanumangarh',
    'Jodhpur',
    'Kota',
    'Nagaur',
    'Pali',
    'Sikar',
    'Udaipur',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List of Rajasthan Districts'),
      ),
      body: ListView.builder(
        itemCount: rajasthanDistricts.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Implement onTap function if needed
              nextScreen(context, ListofHospitals());
              print('District tapped: ${rajasthanDistricts[index]}');
            },
            child: Container(
              height: 50, // Adjust the height as needed
              margin: EdgeInsets.all(8),
              color: Constants().primaryColor,
              child: Center(
                child: Text(
                  rajasthanDistricts[index],
                  style: TextStyle(color: Constants().tertiaryColor),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
