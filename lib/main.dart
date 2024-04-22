import 'package:flutter/material.dart';
import 'package:spotify/spotify.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        home: Spotify(),
        ),
        designSize: Size(350, 640),
        
      );
  }
}
