import 'package:biolink/presentation/app_theme.dart';
import 'package:biolink/presentation/screens/counter_screen.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Starter',
      theme: themeData,
      home: const CounterScreen(),
    );
  }
}
