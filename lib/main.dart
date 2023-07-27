import 'package:flutter/material.dart';
import 'input_page.dart';
import 'extension.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.light(
          primary: Color(0xFF0A0E21),
        ),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        textTheme: TextTheme(
          headlineLarge: TextStyle(
            fontFamily: 'Oswald',
          ),
          // Burada diğer metin stilleri için de font family tanımlayabilirsiniz.
        ),
      ),
      home: InputPage(),
    );
  }
}
