import 'package:flutter/material.dart';

class MyRoutes {
  static final Map<String, Widget Function(BuildContext)> _routes = {

  };
  static const String _init = "/splash";

  static Map<String, Widget Function(BuildContext)> getRoutes(){
    return _routes;
  }

  static String getInit(){
    return _init;
  }
}