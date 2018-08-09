import 'package:flutter/material.dart';
import 'package:flutter_examples/utils/Constraints.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> choices = ['oprion 1 ', 'option 2'];

  _select(String selected) {
    print('selected Option');
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Flutter Examples'),
        actions: <Widget>[
          PopupMenuButton(
            onSelected: _select,
            itemBuilder: (BuildContext context) {
              return choices.map((String choice) {
                return PopupMenuItem(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.network(
                    'https://avatars1.githubusercontent.com/u/14101776',
                    width: 60.0,
                    height: 60.0,
                  ),
                  Text(
                    'Flutter Examples',
                    style: TextStyle(color: Colors.white, fontSize: 24.0),
                  ),
                  new SizedBox(height: 10.0),
                  Text(
                    'username@gmail.com',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                Navigator.pushNamed(context, Constraints.ROUTE_HOME);
              },
            ),
            ListTile(
              title: Text('Profile'),
              onTap: () {
                Navigator.pushNamed(context, Constraints.ROUTE_PROFILE);
              },
            ),
            ListTile(
              title: Text('Category'),
              onTap: () {
                Navigator.pushNamed(context, Constraints.ROUTE_CATEGORY);
              },
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () {
                Navigator.pushNamed(context, Constraints.ROUTE_SETTINGS);
              },
            ),
            ListTile(
              title: Text('About'),
              onTap: () {
                Navigator.pushNamed(context, Constraints.ROUTE_ABOUT);},
            ),
            ListTile(
              title: Text('Contributor'),
              onTap: () {
                Navigator.pushNamed(context, Constraints.ROUTE_CONTRIBUTOR);
              },
            ),
          ],
        ),
      ),
      body: new Container(
        child: new Text('News About Flutter'),
      ),
    );
  }
}

class MyCustomRoute<T> extends MaterialPageRoute<T> {
  MyCustomRoute({WidgetBuilder builder, RouteSettings settings})
      : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    if (settings.isInitialRoute) return child;
    // Fades between routes. (If you don't want any animation,
    // just return child.)
    return new FadeTransition(opacity: animation, child: child);
  }
}
