import 'package:enqueue/widgets/ScreenIconButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          flexibleSpace: SafeArea(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "enQueue",
                style: TextStyle(color: Colors.blue, fontSize: 50),
              ),
            ),
          ),
          centerTitle: true,
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Expanded(
                child: ScreenIconButton(
              onTap: () {},
              icon: Icons.healing,
              text: "Medico",
            )),
            Expanded(
                child: ScreenIconButton(
              onTap: () {},
              icon: Icons.attach_money,
              text: "Privati",
              backgroundColor: Colors.green,
            )),
            Expanded(
                child: ScreenIconButton(
              onTap: () {},
              icon: Icons.account_balance,
              text: "Statali",
              backgroundColor: Colors.amber,
            )),
          ],
        ),
      ),
    );
  }
}
