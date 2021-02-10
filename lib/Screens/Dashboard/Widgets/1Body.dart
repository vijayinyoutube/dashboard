import 'package:flutter/material.dart';

import '2TopClipper.dart';

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
      children: [
        buildTopClipper(context),
      ],
    );
