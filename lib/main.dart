import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_examples/screens/Home.dart';
import 'package:flutter_examples/utils/routes.dart';

void main() {
  debugInstrumentationEnabled = true;
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: new Home(),
      routes: Routes.routes,
      onUnknownRoute: (RouteSettings rs) => new MaterialPageRoute(
            builder: (context) => new Scaffold(
                  appBar: new AppBar(
                    title: new Text('404 Error'),
                  ),
                  body: new Center(
                    child: Text('Under Construction'),
                  ),
                ),
          ),
    );
  }
}
