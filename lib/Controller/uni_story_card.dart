import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  const StoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: size.height*.25,
                      width: size.width*.3,
                      decoration: BoxDecoration(
                        color: Colors.amberAccent,
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    SizedBox(width: 4),
                    Container(
                      height: size.height*.25,
                      width: size.width*.3,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    SizedBox(width: 4),
                    Container(
                      height: size.height*.25,
                      width: size.width*.3,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    SizedBox(width: 4),
                    Container(
                      height: size.height*.25,
                      width: size.width*.3,
                      decoration: BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    SizedBox(width: 4),
                  ],
                ),
              );
  }
}