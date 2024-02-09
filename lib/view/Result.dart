// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:nonogram_solver/routes.dart';
import 'package:sizer/sizer.dart';

class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<StatefulWidget> createState() {
    return ResultState();
  }

}

class ResultState extends State<StatefulWidget> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        Navigator.pushNamedAndRemoveUntil(context, RoutesName.dataInput, (route) => false);
      },
      child: Scaffold(
          body: DecoratedBox(
            decoration: const BoxDecoration(
                color: Colors.white54
            ),
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
                width: 100.w,
                height: 100.h,
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                  ],
                )
            ),
          )
      ),
    );
  }

}