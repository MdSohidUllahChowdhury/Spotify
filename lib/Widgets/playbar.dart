import 'package:flutter/material.dart';

class Uni_Call extends StatelessWidget {
  final String title;
  final String link;
  const Uni_Call({super.key, required this.title, required this.link});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(200, 78, 73, 58),
      child: Container(
        width: MediaQuery.sizeOf(context).width*.45,
        height:MediaQuery.sizeOf(context).height*.068 ,
        child: ListTile(
          title: Text(title,style: TextStyle(color: Colors.white,fontSize:12,fontWeight: FontWeight.bold),),
          leading: Container(
            margin: EdgeInsets.only(top:6),
            height:80,
            width: 55,
            child: Image.network(link,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );}}
