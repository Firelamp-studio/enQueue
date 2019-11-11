import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(EnqueueApp());

class EnqueueApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
        title: 'Enqueue',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: <String, WidgetBuilder>{
          '/': (context) => EnqueueHomePage(),
        });
  }
}

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

class ScreenIconButton extends StatelessWidget {
  ScreenIconButton(
      {@required this.icon,
      @required this.text,
      this.onTap,
      this.backgroundColor = Colors.blue,
      this.foregroundColor = Colors.white,
      Key key})
      : super(key: key);

  final IconData icon;
  final String text;
  final Function onTap;
  final Color foregroundColor;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      child: Material(
        color: backgroundColor,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.all(25),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Icon(
                icon,
                color: foregroundColor,
                size: MediaQuery.of(context).size.width / 2.5,
              ),
              Text(
                text,
                textScaleFactor: 2,
                style: TextStyle(color: foregroundColor),
                textAlign: TextAlign.center,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
