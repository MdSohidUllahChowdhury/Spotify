import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify/Controller/page_controll.dart';


void main() {
  runApp((
    ScreenUtilInit(
        designSize: Size(350, 640),
        builder: (context, child) => 
          MaterialApp(
           debugShowCheckedModeBanner: false,  
           home:PageControll(),
          ),
      )
  ));
}
