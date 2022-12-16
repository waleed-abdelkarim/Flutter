import 'package:bmi_calculator/screens/input_page.dart';
import 'package:flutter/material.dart';


void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          appBarTheme: const AppBarTheme(
            color: Color(0xFF0A0E21),
          ),
            scaffoldBackgroundColor: const Color(0xFF0A0E21),
            textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white))
      ),
      home: InputPage(),
    );
  }
}


