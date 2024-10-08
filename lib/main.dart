import 'package:flutter/material.dart';
import 'package:optifreight/pages/pages.dart';
import 'package:optifreight/utils/utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Opti-Freight Demo',
      theme: appTheme,
      home: const HomePage(),
    );
  }
}
