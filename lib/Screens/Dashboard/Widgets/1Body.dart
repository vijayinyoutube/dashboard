import 'package:dashboard/General%20Widgets/GWidgets.dart';
import 'package:flutter/material.dart';

import '2TopClipper.dart';
import '3Workouts.dart';

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
        buildWorkouts(context),

      ],
    );
