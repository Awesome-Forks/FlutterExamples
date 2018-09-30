import 'package:flutter/material.dart';

import 'package:flutter_examples/utils/Constraints.dart';
import 'package:flutter_examples/utils/routemodal.dart';

class WelcomeCaterogy extends StatefulWidget {
  @override
  _WelcomeCaterogyState createState() => _WelcomeCaterogyState();
}

class _WelcomeCaterogyState extends State<WelcomeCaterogy> {
  int row = 1;
  List<RouteModal> items = [
    new RouteModal('Sample 1', Constraints.ROUTE_Welcome_01),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('Category : Dashboard'),
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
