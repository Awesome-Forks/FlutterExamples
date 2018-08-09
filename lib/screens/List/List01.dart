import 'package:flutter/material.dart';

class List01 extends StatefulWidget {
  @override
  _List01State createState() => _List01State();
}

class _List01State extends State<List01> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text('Stripped Backgroud'),
        ),
        body: ListView.builder(
            itemCount: 20, itemBuilder: (_, index) =>ListUI(index)),);
  }
  Widget ListUI(int index){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 10.0),
      color: (index+1)%2==0?Colors.blueGrey:Colors.white,
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
