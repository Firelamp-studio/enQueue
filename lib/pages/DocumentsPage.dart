import 'package:enqueue/widgets/ScreenIconButton.dart';
import 'package:flutter/material.dart';

class SchedulePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final iconSize = MediaQuery.of(context).size.width / 2.5;

    return Column(
      children: [
        Expanded(
          child: ScreenIconButton(
            onTap: () {},
            icon: Icons.border_color,
            text: "PRENOTA RICETTA",
            backgroundColor: Colors.blue[600],
            iconSize: iconSize,
          ),
        ),
        Expanded(
          child: ScreenIconButton(
            onTap: () {},
            icon: Icons.calendar_today,
            text: "PRENOTA VISITA",
            iconSize: iconSize,
          ),
        )
      ],
    );
  }

}