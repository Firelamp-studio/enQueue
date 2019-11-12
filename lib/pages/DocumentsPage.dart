import 'package:enqueue/widgets/ScreenIconButton.dart';
import 'package:flutter/material.dart';

class SchedulePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ScreenIconButton(
            onTap: () {},
            icon: Icons.border_color,
            text: "PRENOTA RICETTA",
            backgroundColor: Colors.blue[600],
            iconSize: MediaQuery.of(context).size.width / 2.5,
          ),
        ),
        Expanded(
          child: ScreenIconButton(
            onTap: () {},
            icon: Icons.calendar_today,
            text: "PRENOTA VISITA",
            iconSize: MediaQuery.of(context).size.width / 2.5,
          ),
        )
      ],
    );
  }

}