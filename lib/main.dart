import 'package:flutter/material.dart';

import 'drop_down.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: drop_down(),
      debugShowCheckedModeBanner: false,
    );
  }
}
