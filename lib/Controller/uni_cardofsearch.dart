import 'package:flutter/material.dart';

class SearchCard extends StatelessWidget {
  final Color color;
  final Color color2;
   SearchCard({super.key, required this.color, required this.color2});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Row(
                children: [
                  Container(
                    width: size.width*.47,
                    height: size.height*.12,
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(8)
                    ),
                  ),
                  SizedBox(width:4),
                   Container(
                    width: size.width*.47,
                    height: size.height*.12,
                    decoration: BoxDecoration(
                      color: color2,
                      borderRadius: BorderRadius.circular(8)
                    ),
                    
                  ),
                ],
              ),
    );
  }
}