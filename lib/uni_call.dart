import 'package:flutter/material.dart';

class Uni_Call extends StatelessWidget {
  final String title;
  final String link;
  const Uni_Call({super.key, required this.title, required this.link});

  @override
  Widget build(BuildContext context) {
    
    return Expanded( 
                    child: Stack(
                      children: [
                        Container(
                          height: 60,
                          width: 125, 
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(174, 97, 97, 97),
                            borderRadius: BorderRadius.circular(16)
                           ),

                           child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 45.0),
                              child: Text(title,
                                style: TextStyle(
                                  
                                  color: Colors.white),
                                ),
                            )
                              ),
                           ),
                         
                         Container(
                          
                          height: 60,
                          width: 50,

                          child:Image.network(link,fit: BoxFit.cover,), 
                        
                        ),
                        SizedBox(width: 8,)
                      ],
                    ),
                  );
  }
}