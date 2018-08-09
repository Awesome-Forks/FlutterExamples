import 'package:flutter/material.dart';
import 'package:flutter_examples/model/UserInfo.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class List01 extends StatefulWidget {
  @override
  _List01State createState() => _List01State();
}

class _List01State extends State<List01> {
  final String URL =
      'https://raw.githubusercontent.com/FlutterExamples/FlutterExamples/master/lib/data/user_info.json';
  bool isData = false;
  List<UserInfo> data = [];
  GlobalKey<ScaffoldState> _key = new GlobalKey();

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    data = [];
    var Response = await http.get(
      "https://api.github.com/users/nitishk72",
      headers: {"Accept": "application/json"},
    );
    if (Response.statusCode == 200) {
      String responseBody = Response.body;
      var users = json.decode(responseBody);
      for (var user in users) {
        print(user);
      }
      isData = true;
      setState(() {});
    } else {
      _key.currentState
          .showSnackBar(SnackBar(content: new Text('Something went wrong !')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: new AppBar(
        title: Text('Stripped Backgroud'),
      ),
      body: ListView.builder(
          itemCount: 20, itemBuilder: (_, index) => ListUI(index)),
    );
  }

  Widget ListUI(int index) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
      color: (index + 1) % 2 == 0 ? Colors.blueGrey : Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Center(
            child: new Text('Data'),
          ),
          new Text('Data')
        ],
      ),
    );
  }
}
