import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Flutter Examples'),
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
              onTap: () {},
            ),
            ListTile(
              title: Text('Profile'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Category'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () {},
            ),
            ListTile(
              title: Text('About'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Contributor'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: 80,
        itemBuilder: (_, index) => new Card(
              elevation: 12.0,
              child: new Container(
                padding: new EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 5.0,
                ),
                child: new Text('Index ${index + 1}'),
              ),
            ),
      ),
    );
  }
}
