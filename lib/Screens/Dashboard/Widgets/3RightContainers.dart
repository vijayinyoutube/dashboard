import 'package:dashboard/Declarations/Images/ImageFiles.dart';
import 'package:dashboard/Declarations/DashboardScreen.dart';
import 'package:dashboard/General%20Widgets/GWidgets.dart';
import 'package:flutter/material.dart';

Widget buildRightContainer(BuildContext context, int colorIndex, String title,
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
      left: 10,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 150,
        decoration: BoxDecoration(
          color: dashboardColors[colorIndex],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.00),
            bottomLeft: Radius.circular(15.00),
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
      left: imageIndex == 1
          ? -25
          : imageIndex == 5
              ? -65
              : imageIndex == 3
                  ? 17.5
                  : 25,
      child: Container(
        child: Image.asset(
          dashboardImages[imageIndex],
          fit: BoxFit.contain,
        ),
      ),
    );

Widget buildPreview(int colorIndex, String title) => Positioned(
      top: -25,
      right: 30,
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
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width / 2,
            child: Text(
              subTitle,
              textAlign: TextAlign.end,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 27.00,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        widthSpacer(50.00),
      ],
    );
