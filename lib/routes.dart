import 'package:flutter/material.dart';
import 'package:nonogram_solver/view/DataInput.dart';
import 'package:nonogram_solver/view/Result.dart';
import 'package:nonogram_solver/view/SizeInput.dart';
import 'package:nonogram_solver/view/Splash.dart';

class RoutesName {
  static const String splash = "/splash";
  static const String sizeInput = "/size_input";
  static const String dataInput = "/data_input";
  static const String result = "/result";
}

class MyRoutes {
  static final Map<String, Widget Function(BuildContext)> _routes = {
    RoutesName.splash: (context) => const Splash(),
    RoutesName.sizeInput: (context) => const SizeInput(),
    RoutesName.dataInput: (context) => const DataInput(),
    RoutesName.result: (context) => const Result()
  };
  static const String _init = RoutesName.splash;

  static Map<String, Widget Function(BuildContext)> getRoutes(){
    return _routes;
  }

  static String getInit(){
    return _init;
  }
}