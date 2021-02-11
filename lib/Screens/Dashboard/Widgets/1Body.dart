import 'package:dashboard/General%20Widgets/GWidgets.dart';
import 'package:flutter/material.dart';

import '2TopClipper.dart';
import '3RightContainers.dart';
import '4LeftContainers.dart';

Widget buildBody(BuildContext context) => Container(
      child: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: (MediaQuery.of(context).size.height),
          ),
          child: buildRender(context),
        ),
      ),
    );

Widget buildRender(BuildContext context) => Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        buildTopClipper(context),
        heightSpacer(25.00),
        buildRightContainer(context, 0, "Workouts", "Regular Workouts", 1),
        heightSpacer(50.00),
        buildLeftContainer(context, 2, "Challenges", "30 Days Challenge", 2),
        heightSpacer(50.00),
        buildRightContainer(context, 4, "Custom", "Manual Workouts", 3),
        heightSpacer(50.00),
        buildLeftContainer(context, 6, "Relaxation", "Yoga & Mediation", 4),
        heightSpacer(50.00),
        buildRightContainer(context, 8, "Food", "Nutritions & Diet", 5),
        heightSpacer(25.00),
      ],
    );
