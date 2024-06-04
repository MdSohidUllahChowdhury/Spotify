// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:spotify/Controller/uni_playlist.dart';

class Library extends StatelessWidget {
  const Library({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: 
      Padding(
        padding: const EdgeInsets.only(top: 12,left: 10),
        child: 
        Column(mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            ListTile(
              leading: CircleAvatar(
                  backgroundImage: 
                  NetworkImage('https://avatars.githubusercontent.com/u/157578225?v=4'),
                  radius: 20,
                  ),

              title:Text('Your Library',style: TextStyle(
                 fontSize: 18,
                 fontWeight: FontWeight.bold,
                 color: Colors.white
                 ),) ,
            
            trailing: Icon(Icons.add,color: Colors.white,size: 25,),
             
            ),
            SizedBox(height: 12),

             ElevatedButton(style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(69, 70, 65, 65)),
                    onPressed: (){},
                    child: Text('Playlist',
                    style: TextStyle(color: Colors.white),
                    ),
                    ),
            SizedBox(height: 12),
            Row(
              children: [
                Icon(Icons.sort_sharp,color: Colors.white,),
                SizedBox(width: 10,),
                Text('Recents',style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),),
              ],
            ),
            SizedBox(height: 12),
            PlaylistCard(playlist_name: 'Deep Mood'),
            SizedBox(height: 2),
            PlaylistCard(playlist_name: 'Little Bass'),
            SizedBox(height: 2),
            PlaylistCard(playlist_name: 'Favorite Pop'),
            SizedBox(height: 2),
            ListTile(
              title: Text('Add artist ',style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),),
              leading: CircleAvatar(
                backgroundColor: Color.fromARGB(209, 14, 12, 12),
                child: IconButton(onPressed: (){},
                 icon: Icon(Icons.add,color: Colors.white,)),
              ),
            )
          ],
        ),
      ),
    );
  }
}