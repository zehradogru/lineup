import 'package:flutter/material.dart';
import 'buttons/navi_bar.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NaviBar(),
    );
  }
}
