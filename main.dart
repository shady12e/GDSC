import 'package:flutter/material.dart';
import 'package:gdsc/gdsc/login_screen.dart';

import 'register_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }

}

