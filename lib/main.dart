import 'package:flutter/material.dart';

import 'screens/xylophone.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xylophone',
      home: XylophoneApp(),
    );
  }
}
