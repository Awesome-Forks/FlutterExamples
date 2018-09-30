import 'package:flutter/material.dart';

import 'package:flutter_examples/utils/Constraints.dart';
import 'package:flutter_examples/utils/routemodal.dart';

class DashboardCategory extends StatefulWidget {
  @override
  _DashboardCategoryState createState() => _DashboardCategoryState();
}

class _DashboardCategoryState extends State<DashboardCategory> {
  int row = 1;
  List<RouteModal> items = [
    new RouteModal('Sample 1', Constraints.ROUTE_Dashboard_01),
    new RouteModal('Sample 2', Constraints.ROUTE_Dashboard_02),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('Category : List'),
      ),
      body: new GridView.count(
        crossAxisCount: row,
        childAspectRatio: 3.0 / row,
        children: new List<Widget>.generate(
          items.length,
          (index) {
            return new GridTile(
              child: InkWell(
                child: new Card(
                  color: Colors.purple[700 - (100 * (index % 5))],
                  child: new Center(
                    child: new Text(
                      items[index].title,
                      style: TextStyle(fontSize: 18.0, color: Colors.white),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, items[index].route);
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
