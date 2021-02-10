import 'package:dashboard/Declarations/Images/ImageFiles.dart';
import 'package:flutter/material.dart';

Widget buildTopClipper(BuildContext context) => Container(
      height: MediaQuery.of(context).size.width,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          buildClipper(context),
        ],
      ),
    );

Widget buildClipper(BuildContext context) => Positioned(
      top: -75,
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Image.asset(
          dashboardImages[0],
          fit: BoxFit.contain,
        ),
      ),
    );

Widget buildText() => Text("Dashboard",
    style: TextStyle(
        color: Colors.blue, fontSize: 27.00, fontWeight: FontWeight.bold));
