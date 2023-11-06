import 'package:axa_biz/pages/login_page.dart';
import 'package:axa_biz/view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/get_started_page.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ViewModel()),
      ],
      //create: (context) => ViewModel(),
      child: MaterialApp(
        theme: ThemeData.dark().copyWith(
          colorScheme: const ColorScheme.light(
            primary: Color(0xFF0A0E21),
          ),
          scaffoldBackgroundColor: const Color(0xFF0A0E21),
          textTheme: const TextTheme(
            headlineLarge: TextStyle(
              fontFamily: 'Playfair',
            ),
            // Burada diğer metin stilleri için de font family tanımlayabilirsiniz.
          ),
        ),
        home: const GetStartedPage(),
      ),
    );
  }
}
