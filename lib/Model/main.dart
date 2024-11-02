import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify/Controller/page_controll.dart';

void main() {
  runApp((ScreenUtilInit(
    designSize: Size(375, 725),
    builder: (context, child) => MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: PageControll(),
    ),
  )));
}
