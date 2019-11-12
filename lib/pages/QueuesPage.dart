import 'package:enqueue/widgets/ScreenIconButton.dart';
import 'package:flutter/material.dart';

class QueuesPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ScreenIconButton(
            onTap: () {},
            icon: Icons.local_offer,
            text: "METTITI IN CODA",
            backgroundColor: Colors.blue[600],
            iconSize: MediaQuery.of(context).size.width / 2.5,
          ),
        ),
        Expanded(
          child: ScreenIconButton(
            onTap: () {},
            icon: Icons.search,
            text: "TROVA CODE ELETTRONICHE",
            iconSize: MediaQuery.of(context).size.width / 2.5,
          ),
        )
      ],
    );
  }

}