import 'package:flutter/material.dart';

import 'package:flutter_examples/utils/Constraints.dart';

class ListCaterogy extends StatefulWidget {
  @override
  _ListCaterogyState createState() => _ListCaterogyState();
}

class _ListCaterogyState extends State<ListCaterogy> {
  int row = 1;
  List<String> items = ['Stripped'];

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
                      items[index],
                      style: TextStyle(fontSize: 18.0, color: Colors.white),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, Constraints.ROUTE_List_01);
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
