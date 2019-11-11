import 'package:enqueue/widgets/ScreenIconButton.dart';
import 'package:flutter/material.dart';

class EnqueueHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          )
        ],
        title: Text("enQueue"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ScreenIconButton(
                onTap: () {},
                icon: Icons.local_offer,
                text: "METTITI IN CODA",
                backgroundColor: Colors.blue[600],
              ),
            ),
            Expanded(
              child: ScreenIconButton(
                onTap: () {},
                icon: Icons.search,
                text: "TROVA CODE ELETTRONICHE",
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.format_list_numbered), title: Text("Code")),
          BottomNavigationBarItem(
              icon: Icon(Icons.assignment), title: Text("Ritiro Documenti"))
        ],
      ),
    );
  }
}