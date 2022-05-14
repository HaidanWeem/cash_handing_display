import 'package:cash_handling_display/widgets/main_cashhanding_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CashApplication());
}

class CashApplication extends StatelessWidget {
  const CashApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CashHandling',
      theme: ThemeData(
      ),
      home: MainCashHandlingScreen(),
    );
  }
}


