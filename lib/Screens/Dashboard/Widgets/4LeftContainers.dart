import 'package:dashboard/Declarations/Images/ImageFiles.dart';
import 'package:dashboard/Declarations/DashboardScreen.dart';
import 'package:dashboard/General%20Widgets/GWidgets.dart';
import 'package:flutter/material.dart';

Widget buildLeftContainer(BuildContext context, int colorIndex, String title,
        String subTitle, int imageIndex) =>
    Container(
      height: 150,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          buildContainer(context, colorIndex, title, subTitle, imageIndex),
        ],
      ),
    );

Widget buildContainer(BuildContext context, int colorIndex, String title,
        String subTitle, int imageIndex) =>
    Positioned(
      right: 10,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 150,
        decoration: BoxDecoration(
          color: dashboardColors[colorIndex],
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(15.00),
            bottomRight: Radius.circular(15.00),
          ),
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            buildImage(imageIndex),
            buildPreview(colorIndex, title),
            buildText(context, subTitle),
          ],
        ),
      ),
    );

Widget buildImage(int imageIndex) => Positioned(
      top: -45,
      bottom: 10,
      right: 0,
      child: Container(
        width: 125,
        height: 125,
        child: Image.asset(
          dashboardImages[imageIndex],
          fit: BoxFit.contain,
        ),
      ),
    );

Widget buildPreview(int colorIndex, String title) => Positioned(
      top: -25,
      left: 30,
      child: Container(
        height: 50,
        width: 175,
        decoration: BoxDecoration(
          color: dashboardColors[colorIndex + 1],
          borderRadius: BorderRadius.circular(15.00),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
                color: Colors.white,
                fontSize: 27.00,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );

Widget buildText(BuildContext context, String subTitle) => Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        widthSpacer(50.00),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width / 2,
            child: Text(
              subTitle,
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 27.00,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
