
import 'package:flutter/material.dart';

class Dashboard02 extends StatefulWidget {
  Dashboard02({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Dashboard02State createState() => new _Dashboard02State();
}

class _Dashboard02State extends State<Dashboard02> {
  Widget Cardd(IconData icon, String text) {
    return new InkWell(
      child: new Card(
        child: new Container(
          width: 400.0,
          height: 360.0,
          child: new Column(
            children: <Widget>[
              new SizedBox(height: 20.0),
              new Icon(
                icon,
                size: 80.0,
                color: Colors.blueGrey,
              ),
              new SizedBox(height: 10.0),
              new Text(text, style: TextStyle(fontSize: 22.0))
            ],
          ),
        ),
      ),
      onTap: () {
        print(text);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: new Color(0xff332447),
        elevation: 0.0,
        title: new Text('Company Name'),
        centerTitle: true,
        actions: <Widget>[],
      ),
      body: new Container(
        color: new Color(0xff332447),
        child: GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          padding: new EdgeInsets.all(12.0),
          mainAxisSpacing: 20.0,
          crossAxisSpacing: 20.0,
          children: <Widget>[
            Cardd(Icons.dashboard, 'Dashboard'),
            Cardd(Icons.people, 'Profile'),
            Cardd(Icons.shopping_cart, 'Shopping'),
            Cardd(Icons.account_balance_wallet, 'Wallet'),
            Cardd(Icons.settings, 'Settings'),
            Cardd(Icons.help, 'Help'),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
