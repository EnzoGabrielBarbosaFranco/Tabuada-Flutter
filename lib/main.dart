// main.dart
import 'package:flutter/material.dart';
import 'tabuada_ui.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TabuadaUI(),
    );
  }
}
