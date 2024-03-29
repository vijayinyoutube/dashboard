import 'package:flutter/material.dart';

import 'Screens/Dashboard/UI/DashboardPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardPageClass(),
    );
  }
}
