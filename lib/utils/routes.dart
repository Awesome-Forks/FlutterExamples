import 'package:flutter/material.dart';
import 'package:flutter_examples/screens/Category.dart';
import 'package:flutter_examples/screens/Dashboard/Dashboard01.dart';
import 'package:flutter_examples/screens/Dashboard/DahboardCategory.dart';
import 'package:flutter_examples/screens/Dashboard/Dashboard02.dart';
import 'package:flutter_examples/screens/Home.dart';
import 'package:flutter_examples/screens/List/List01.dart';
import 'package:flutter_examples/screens/List/ListCaterogy.dart';
import 'package:flutter_examples/screens/Login/Login01.dart';
import 'package:flutter_examples/screens/Login/LoginCaterogy.dart';
import 'package:flutter_examples/screens/Slivers/Sliver01.dart';
import 'package:flutter_examples/screens/Slivers/SliversCategory.dart';
import 'package:flutter_examples/screens/Welcome/Welcome01.dart';
import 'package:flutter_examples/screens/Welcome/WelcomeCategory.dart';
import 'package:flutter_examples/utils/Constraints.dart';

class Routes {
  static Map<String, WidgetBuilder> routes = {
    Constraints.ROUTE_HOME: (BuildContext context) => Home(),
    Constraints.ROUTE_CATEGORY: (BuildContext context) => Category(),
    Constraints.ROUTE_LIST: (BuildContext context) => ListCaterogy(),
    Constraints.ROUTE_Dashboard: (BuildContext context) => DashboardCategory(),
    Constraints.ROUTE_Slivers: (BuildContext context) => SliversCategory(),
    Constraints.ROUTE_Login: (BuildContext context) => LoginCaterogy(),
    Constraints.ROUTE_Welcome: (BuildContext context) => WelcomeCaterogy(),

    Constraints.ROUTE_List_01: (BuildContext context) => List01(),

    Constraints.ROUTE_Login_01: (BuildContext context) => Login01(),

    Constraints.ROUTE_Welcome_01: (BuildContext context) => Welcome01(),

    Constraints.ROUTE_Dashboard_01: (BuildContext context) => Dashboard01(),
    Constraints.ROUTE_Dashboard_02: (BuildContext context) => Dashboard02(),

    Constraints.ROUTE_Slivers_01: (BuildContext context) => Slivers01(),
  };
}
