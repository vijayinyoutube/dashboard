import 'package:dashboard/Declarations/Images/ImageFiles.dart';
import 'package:flutter/material.dart';

Widget buildTopClipper(BuildContext context) => Container(
      height: 100,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          buildClipper(context),
          buildText(),
        ],
      ),
    );

Widget buildClipper(BuildContext context) => Positioned(
      top: 0,
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Image.asset(
          dashboardImages[0],
          fit: BoxFit.contain,
        ),
      ),
    );

Widget buildText() => Positioned(
      top: 35,
      left: 20,
      child: Text(
        "Dashboard",
        style: TextStyle(
            color: Colors.blue, fontSize: 27.00, fontWeight: FontWeight.bold),
      ),
    );
