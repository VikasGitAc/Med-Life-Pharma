import 'package:flutter/material.dart';

import 'Stock_Manager/Stock_Products.dart';
import 'Login.dart';
import 'OrderClerk/Client.dart';
import 'OrderClerk/Orders.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: order(),
    );
  }
}
