import 'package:flutter/material.dart';
import 'package:nonogram_solver/view/DataInput.dart';
import 'package:nonogram_solver/view/SizeInput.dart';
import 'package:nonogram_solver/view/Splash.dart';

class MyRoutes {
  static final Map<String, Widget Function(BuildContext)> _routes = {
    "/splash": (context) => const Splash(),
    "/size_input": (context) => const SizeInput(),
    "/data_input": (context) => const DataInput()
  };
  static const String _init = "/splash";

  static Map<String, Widget Function(BuildContext)> getRoutes(){
    return _routes;
  }

  static String getInit(){
    return _init;
  }
}