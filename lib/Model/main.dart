import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify/Model/pagecontroll.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return 
      ScreenUtilInit(
        builder: (context, child) => 
         MaterialApp(
        debugShowCheckedModeBanner: false,  
        home: PageControll()
        ),
        designSize: Size(350, 640),
        
      );
  }
}
