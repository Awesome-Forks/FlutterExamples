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
    http.get(
      "https://raw.githubusercontent.com/FlutterExamples/FlutterExamples/master/lib/data/user_info.json",
      headers: {"Accept": "application/json"},
    ).then((response) {
      if (response.statusCode == 200) {
        var resBody = response.body;
        var users = json.decode(resBody);
        for (var user in users) {
          data.add(new UserInfo(
              name: user['name'],
              index: user['index'],
              address: user['address'],
              company: user['company'],
              email: user['email'],
              gender: user['gender'],
              month: user['month'],
              phone: user['phone'],
              year: user['year']));
        }
        setState(() {});
      } else {
        _key.currentState.showSnackBar(
            SnackBar(content: new Text('Something went wrong !')));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: new AppBar(
        title: Text('Stripped Backgroud'),
      ),
      body: Container(
        color: Colors.grey,
    child: ListView.builder(
        itemCount: data.length, itemBuilder: (_, index) => ListUI(index)),
      ),
    );
  }

  Widget ListUI(int index) {
    UserInfo user = data[index];
    return Container(
      margin: EdgeInsets.all(2.0),
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
      color: (index + 1) % 2 == 0 ? Color(0xFFe0e9ff) : Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Center(
            child: new Text(
              '${user.month} - ${user.year}',
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Divider(),
          new Text('Name : ${user.name}'),
          new Text('Phone : ${user.phone}'),
          new Text('Email : ${user.email}'),
          new Text('Company : ${user.company}'),
          new Text('Gender : ${user.gender}'),
        ],
      ),
    );
  }
}
