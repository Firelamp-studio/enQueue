import 'package:enqueue/utils/Router.dart';
import 'package:enqueue/widgets/AnimatedScreenIconButton.dart';
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
                child: Hero(
              tag: 'doctorBody',
              child: ScreenIconButton(
                onTap: () {
                  Navigator.of(context).pushNamed(Router.DOCTOR_ROUTE);
                },
                icon: Icons.healing,
                text: "Medico",
              ),
            )),
            Expanded(
              child: Stack(
                children: <Widget>[
                  ScreenIconButton(
                    onTap: () {},
                    icon: Icons.account_balance,
                    text: "Statali",
                    backgroundColor: Colors.amber,
                  ),
                  Positioned.fill(
                      child: Opacity(
                    opacity: 0.75,
                    child: Container(
                      color: Colors.grey,
                      child: Icon(
                        Icons.lock,
                        size: 150,
                        color: Colors.white,
                      ),
                    ),
                  )),
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: <Widget>[
                  ScreenIconButton(
                    onTap: () {},
                    icon: Icons.attach_money,
                    text: "Privati",
                    backgroundColor: Colors.green,
                  ),
                  Positioned.fill(
                      child: Opacity(
                    opacity: 0.75,
                    child: Container(
                      color: Colors.grey,
                      child: Icon(
                        Icons.lock,
                        size: 150,
                        color: Colors.white,
                      ),
                    ),
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
