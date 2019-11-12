import 'package:enqueue/pages/DocumentsPage.dart';
import 'package:enqueue/pages/QueuesPage.dart';
import 'package:flutter/material.dart';

class DoctorScreen extends StatefulWidget {
  DoctorScreen({Key key}) : super(key: key);

  final List<Widget> pages = [
    QueuesPage(),
    SchedulePage(),
  ];

  @override
  _DoctorScreenState createState() => _DoctorScreenState();
}

class _DoctorScreenState extends State<DoctorScreen>
    with TickerProviderStateMixin {
  //int _selectedPage = 0;
  TabController _controller;

  @override
  void initState() {
    super.initState();

    _controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        bottom: TabBar(
          labelColor: Colors.blue,
          controller: _controller,
          tabs: [
            Tab(icon: Icon(Icons.format_list_numbered), text: "Code"),
            Tab(icon: Icon(Icons.assignment), text: "Prenotazioni")
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          )
        ],
        title: Text(
          "enQueue",
          style: TextStyle(color: Colors.blue),
        ),
        iconTheme: IconThemeData(color: Colors.blue),
      ),
      body: SafeArea(
        child: TabBarView(controller: _controller, children: widget.pages),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();

    _controller.dispose();
  }
}
