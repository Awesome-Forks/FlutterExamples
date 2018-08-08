import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  List<String> category = [
    'Animation',
    'Bootsheet',
    'Buttons',
    'Cards',
    'Dashboard',
    'Forms',
    'Login',
    'Profile',
    'Register',
    'shopping',
    'Slivers',
    'Timeline',
    'More'
  ];
  GlobalKey<ScaffoldState> _key = new GlobalKey();
  int row = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: new AppBar(
        title: new Text('Category'),
      ),
      body: new GridView.count(
        crossAxisCount: row,
        childAspectRatio: 3.0 / row,
        children: new List<Widget>.generate(
          category.length,
          (index) {
            return new GridTile(
              child: InkWell(
                child: new Card(
                  color: Colors.purple[700 - (100 * (index % 5))],
                  child: new Center(
                    child: new Text(
                      category[index],
                      style: TextStyle(fontSize: 18.0, color: Colors.white),
                    ),
                  ),
                ),
                onTap: () {
                  _key.currentState.showSnackBar(
                    SnackBar(
                      content: new Text('You clicked : ${category[index]}'),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
