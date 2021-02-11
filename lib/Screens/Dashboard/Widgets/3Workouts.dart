import 'package:dashboard/Declarations/Global/GlobalDeclar.dart';
import 'package:dashboard/Declarations/Images/ImageFiles.dart';
import 'package:dashboard/General%20Widgets/GWidgets.dart';
import 'package:flutter/material.dart';

Widget buildWorkouts(BuildContext context) => Container(
      height: 150,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          buildContainer(context),
        ],
      ),
    );

Widget buildContainer(BuildContext context) => Positioned(
      left: 10,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 150,
        decoration: BoxDecoration(
          color: workoutContainerColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.00),
            bottomLeft: Radius.circular(15.00),
          ),
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            buildImage(),
            buildPreview(),
            buildText(context),
          ],
        ),
      ),
    );

Widget buildImage() => Positioned(
      top: -45,
      bottom: 10,
      left: -20,
      child: Container(
        child: Image.asset(
          dashboardImages[1],
          fit: BoxFit.contain,
        ),
      ),
    );

Widget buildPreview() => Positioned(
      top: -25,
      right: 30,
      child: Container(
        height: 50,
        width: 175,
        decoration: BoxDecoration(
          color: workoutPreviewColor,
          borderRadius: BorderRadius.circular(15.00),
        ),
        child: Center(
          child: Text(
            "Workouts",
            style: TextStyle(
                color: Colors.white,
                fontSize: 27.00,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );

Widget buildText(BuildContext context) => Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width / 2,
            child: Text(
              "Regular Workouts",
              textAlign: TextAlign.end,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 27.00,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        widthSpacer(60.00),
      ],
    );
