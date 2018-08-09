import 'package:flutter/material.dart';
import 'package:flutter_examples/screens/Category.dart';
import 'package:flutter_examples/screens/Home.dart';
import 'package:flutter_examples/screens/List/List01.dart';
import 'package:flutter_examples/screens/List/ListCaterogy.dart';
import 'package:flutter_examples/utils/Constraints.dart';

class Routes {
  static Map<String, WidgetBuilder> routes = {
    Constraints.ROUTE_HOME: (BuildContext context) => Home(),
    Constraints.ROUTE_CATEGORY: (BuildContext context) => Category(),
    Constraints.ROUTE_LIST: (BuildContext context) => ListCaterogy(),
    Constraints.ROUTE_List_01: (BuildContext context) => List01(),
  };
}
