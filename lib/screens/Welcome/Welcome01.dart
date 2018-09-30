import 'package:flutter/material.dart';

class Welcome01 extends StatefulWidget {
  @override
  _Welcome01State createState() => _Welcome01State();
}

class _Welcome01State extends State<Welcome01> {
  double height ;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    return new Scaffold(
      body: new Container(
        padding: EdgeInsets.symmetric(horizontal: 50.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Container(
              height: height*.80,
              padding: new EdgeInsets.symmetric(vertical: height*.12),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Image.asset('images/welcome_01.png', width: 60.0),
                  new SizedBox(height: height*.1),
                  new Text('Start', style: TextStyle(fontSize: 40.0)),
                  new Text('Your', style: TextStyle(fontSize: 40.0)),
                  new Text('Adventure', style: TextStyle(fontSize: 40.0)),
                ],
              ),
            ),
            new Center(
              child: new RaisedButton(
                child: new Text("Login", style: TextStyle(fontSize: 22.0)),
                onPressed: () {},
                color: new Color(0xFFf8ad1c),
                textColor: Colors.white,
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)),
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 80.0),
              ),
            ),
            new SizedBox(height: 20.0),
            new Center(
                child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text("You don't have account ? "),
                new FlatButton(
                  child: new Text("Sign up"),
                  onPressed: () {},
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
