// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SizeInput extends StatefulWidget {
  const SizeInput({super.key});

  @override
  State<StatefulWidget> createState() {
    return SizeInputState();
  }

}

class SizeInputState extends State<StatefulWidget> {

  int type = 0;   // 0 - 5x5, 1 - 10x10, 2 - 15x15

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
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
                Text(
                  "Select the size of board",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(height: 5.h),
                Row(
                  children: [
                    SizedBox(
                      width: 28.w,
                      height: 6.h,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            type = 0;
                          });
                        },
                        style: TextButton.styleFrom(
                          side: BorderSide(
                            color: type == 0 ? Colors.blue : Colors.grey,
                            width: type == 0 ? 2 : 1.2
                          )
                        ),
                        child: Text(
                          "5x5",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.sp
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 3.w),
                    SizedBox(
                      width: 28.w,
                      height: 6.h,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            type = 1;
                          });
                        },
                        style: TextButton.styleFrom(
                          side: BorderSide(
                            color: type == 1 ? Colors.blue : Colors.grey,
                            width: type == 1 ? 2 : 1.2
                          )
                        ),
                        child: Text(
                          "10x10",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.sp
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 3.w),
                    SizedBox(
                      width: 28.w,
                      height: 6.h,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            type = 2;
                          });
                        },
                        style: TextButton.styleFrom(
                          side: BorderSide(
                            color: type == 2 ? Colors.blue : Colors.grey,
                            width: type == 2 ? 2 : 1.2
                          )
                        ),
                        child: Text(
                          "15x15",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.sp
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                SizedBox(
                  width: 80.w,
                  height: 6.5.h,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(context, "/data_input", (route) => false, arguments: {
                        "type": type
                      });
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2.w)
                      )
                    ),
                    child: Text(
                      "Continue",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp
                      ),
                    ),
                  ),
                )
              ],
            )
          ),
        )
      ),
    );
  }

}