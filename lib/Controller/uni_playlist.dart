import 'package:flutter/material.dart';

class PlaylistCard extends StatelessWidget {
 final String playlist_name;
   PlaylistCard({super.key, required this.playlist_name});

  @override
  Widget build(BuildContext context) {
    return ListTile(
              leading: Container(
                height: 90,
                width: 60,
                color: Colors.amber,
              ),
              title: Text(playlist_name,style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),),

              subtitle: Row(
                children: [
                  Icon(Icons.push_pin_sharp,size: 10,color: Colors.green,),
                  SizedBox(width: 6,),
                  Text('Playlist',style: TextStyle(
                  fontSize: 10,
                  color: Colors.white,
                ),),
                SizedBox(width: 6,),
                  Text('• Shakil Chowdhury',style: TextStyle(
                  fontSize: 10,
                  color: Colors.white,
                ),),
                ],
              ),  
            );       
  }
}