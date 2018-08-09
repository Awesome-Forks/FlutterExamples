import 'package:flutter/material.dart';

class Dashboard01 extends StatefulWidget {
  Dashboard01({this.list});

  List list;

  @override
  _Dashboard01State createState() => _Dashboard01State();
}

class _Dashboard01State extends State<Dashboard01>
    with SingleTickerProviderStateMixin {
  TabController controller;
  String imageURL = 'https://avatars2.githubusercontent.com/u/15886737?v=4';

  @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: new Text('Dashboard 01'),
        ),
        body: new Center(
          child: new Text('Dashboard 01'),
        ));
  }
}
