import 'package:flutter/material.dart';

class Login01 extends StatefulWidget {
  @override
  _Login01State createState() => _Login01State();
}

class _Login01State extends State<Login01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: new Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 60.0),
          color: new Color.fromRGBO(70, 75, 85, 1.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new SizedBox(height: 70.0),
              new InkWell(
                splashColor: Colors.white,
                highlightColor: Colors.white,
                child: new Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              new SizedBox(height: 30.0),
              new Text(
                'Log In',
                style: TextStyle(
                  fontSize: 45.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              new SizedBox(
                height: 160.0,
              ),
              TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  icon: new Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  hintText: 'E-mail ID',
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              new SizedBox(
                height: 20.0,
              ),
              TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  icon: new Icon(
                    Icons.lock,
                    color: Colors.white,
                  ),
                  hintText: 'Password',
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              new SizedBox(
                height: 30.0,
              ),
              new Center(
                child: new RaisedButton(
                  child: new Text("Log In", style: TextStyle(fontSize: 22.0)),
                  onPressed: () {},
                  color: new Color(0xf21242C),
                  textColor: Colors.white,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  padding:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 80.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
