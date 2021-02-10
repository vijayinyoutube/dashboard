import 'package:dashboard/Screens/Dashboard/Widgets/1Body.dart';
import 'package:flutter/material.dart';

class DashboardPageClass extends StatefulWidget {
  DashboardPageClass({Key key}) : super(key: key);

  @override
  DashboardPageClassState createState() => DashboardPageClassState();
}

class DashboardPageClassState extends State<DashboardPageClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(context),
    );
  }
}
