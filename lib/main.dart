import 'package:flutter/material.dart';
import 'package:data_list/Screen/LoginPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        home: LoginPage(),
      );
}
