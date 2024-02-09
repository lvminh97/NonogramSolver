// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:nonogram_solver/routes.dart';
import 'package:sizer/sizer.dart';

class DataInput extends StatefulWidget {
  const DataInput({super.key});

  @override
  State<StatefulWidget> createState() {
    return DataInputState();
  }

}

class DataInputState extends State<StatefulWidget> {

  int size = 0;// 0 - row, 1 - col
  int pos = 0;
  String content = "";
  List<String> data = [];
  bool firstInit = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if(firstInit) {
      final args = ModalRoute.of(context)!.settings.arguments as Map;
      size = [5, 10, 15][args["type"] ?? 0];
      for(int i = 0; i < size; i++) {
        data.add("");
        data.add("");
      }
      firstInit = false;
    }

    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        Navigator.pushNamedAndRemoveUntil(context, RoutesName.sizeInput, (route) => false);
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
                Text(
                  "Enter the data of board",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(height: 5.h),
                Text(
                  "${pos < size ? "Row" : "Col"} ${pos < size ? (pos + 1) : (pos - size + 1)}/$size",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14.sp
                  ),
                ),
                SizedBox(height: 3.h),
                Container(
                  width: 90.w,
                  height: 6.h,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1.5
                    ),
                    borderRadius: BorderRadius.circular(2.w)
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    content,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                SizedBox(height: 5.h),
                SizedBox(
                  width: 80.w,
                  height: 6.5.h,
                  child: TextButton(
                    onPressed: () {
                      data[pos] = content;
                      Navigator.pushNamedAndRemoveUntil(context, RoutesName.result, (route) => false, arguments: {
                        "size": size,
                        "data": data
                      });
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2.w)
                      )
                    ),
                    child: Text(
                      "Get the result",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 25.w,
                      height: 6.h,
                      child: TextButton(
                        onPressed: () {
                          content += "1";
                          setState(() {});
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2.w)
                          )
                        ),
                        child: Text(
                          "1",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 2.w),
                    SizedBox(
                      width: 25.w,
                      height: 6.h,
                      child: TextButton(
                        onPressed: () {
                          content += "2";
                          setState(() {});
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2.w)
                          )
                        ),
                        child: Text(
                          "2",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 2.w),
                    SizedBox(
                      width: 25.w,
                      height: 6.h,
                      child: TextButton(
                        onPressed: () {
                          content += "3";
                          setState(() {});
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2.w)
                          )
                        ),
                        child: Text(
                          "3",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 1.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 25.w,
                      height: 6.h,
                      child: TextButton(
                        onPressed: () {
                          content += "4";
                          setState(() {});
                        },
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.grey,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(2.w)
                            )
                        ),
                        child: Text(
                          "4",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.sp
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 2.w),
                    SizedBox(
                      width: 25.w,
                      height: 6.h,
                      child: TextButton(
                        onPressed: () {
                          content += "5";
                          setState(() {});
                        },
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.grey,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(2.w)
                            )
                        ),
                        child: Text(
                          "5",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.sp
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 2.w),
                    SizedBox(
                      width: 25.w,
                      height: 6.h,
                      child: TextButton(
                        onPressed: () {
                          content += "6";
                          setState(() {});
                        },
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.grey,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(2.w)
                            )
                        ),
                        child: Text(
                          "6",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.sp
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 1.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 25.w,
                      height: 6.h,
                      child: TextButton(
                        onPressed: () {
                          content += "7";
                          setState(() {});
                        },
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.grey,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(2.w)
                            )
                        ),
                        child: Text(
                          "7",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.sp
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 2.w),
                    SizedBox(
                      width: 25.w,
                      height: 6.h,
                      child: TextButton(
                        onPressed: () {
                          content += "8";
                          setState(() {});
                        },
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.grey,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(2.w)
                            )
                        ),
                        child: Text(
                          "8",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.sp
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 2.w),
                    SizedBox(
                      width: 25.w,
                      height: 6.h,
                      child: TextButton(
                        onPressed: () {
                          content += "9";
                          setState(() {});
                        },
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.grey,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(2.w)
                            )
                        ),
                        child: Text(
                          "9",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.sp
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 1.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 25.w,
                      height: 6.h,
                      child: TextButton(
                        onPressed: () {
                          if(pos > 0) {
                            data[pos] = content;
                            pos--;
                            content = data[pos];
                            setState(() {});
                          }
                        },
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.grey,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(2.w)
                            )
                        ),
                        child: Icon(
                          Icons.arrow_upward,
                          color: Colors.white,
                          size: 14.sp
                        ),
                      ),
                    ),
                    SizedBox(width: 2.w),
                    SizedBox(
                      width: 25.w,
                      height: 6.h,
                      child: TextButton(
                        onPressed: () {
                          content += " ";
                          setState(() {});
                        },
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.grey,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(2.w)
                            )
                        ),
                        child: Icon(
                          Icons.space_bar,
                          color: Colors.white,
                          size: 14.sp
                        ),
                      ),
                    ),
                    SizedBox(width: 2.w),
                    SizedBox(
                      width: 25.w,
                      height: 6.h,
                      child: TextButton(
                        onPressed: () {
                          if(pos + 1 < 2 * size) {
                            data[pos] = content;
                            pos++;
                            content = data[pos];
                            setState(() {});
                          }
                        },
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.grey,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(2.w)
                            )
                        ),
                        child: Icon(
                          Icons.arrow_downward,
                          color: Colors.white,
                          size: 14.sp
                        )
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 1.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 38.5.w,
                      height: 6.h,
                      child: TextButton(
                        onPressed: () {
                          content = "";
                          setState(() {});
                        },
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.grey,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(2.w)
                            )
                        ),
                        child: Text(
                          "Clear",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.sp
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 2.w),
                    SizedBox(
                      width: 38.5.w,
                      height: 6.h,
                      child: TextButton(
                          onPressed: () {
                            if(content.isNotEmpty) {
                              content = content.substring(0, content.length - 1);
                            }
                            setState(() {});
                          },
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.grey,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(2.w)
                              )
                          ),
                          child: Icon(
                              Icons.backspace,
                              color: Colors.white,
                              size: 14.sp
                          )
                      ),
                    ),
                  ],
                ),
              ],
            )
          ),
        )
      ),
    );
  }

}