import 'package:flutter/material.dart';
import 'package:spotify/Widget/playlist_card_of_search.dart';
import 'package:spotify/Widget/story_card_of_search.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              ListTile(
                leading: CircleAvatar(
                    backgroundImage: 
                    NetworkImage('https://avatars.githubusercontent.com/u/157578225?v=4'),
                    radius: 20,
                    ),
              
                title:Text('Search',style: TextStyle(
                   fontSize: 18,
                   fontWeight: FontWeight.bold,
                   color: Colors.white
                   ),) ,
              
              trailing: Icon(
                Icons.camera_alt_outlined,
                color: Colors.white,
                size: 25
                ),
               
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 45,
                width: size.width*9,
                child: TextField(
                decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white, 
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6), 
                    gapPadding: 15,
                   ),
                prefixIcon:Icon(Icons.search) ,
                hintText: 'What do you want to listen to?',
                hintStyle: TextStyle(
                  color: const Color.fromARGB(255, 63, 61, 61)
                  ), 
                ),
               ),
              ),
              SizedBox(height: 10),
              
              Text('Explore your genres',
              style:TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white
               ),
              ),
              SizedBox(height: 10),
              StoryCard(),
              SizedBox(height: 10),
              Text('Browes all',
              style:TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white
               ),
              ),
              SizedBox(height: 10),
              PlaylistCard(color: Colors.brown,color2: Colors.blueGrey,),
              SizedBox(height: 9),
              PlaylistCard(color: Colors.white,color2: Colors.purple,),
              SizedBox(height: 9),
              PlaylistCard(color: Colors.greenAccent,color2: Colors.red,),
              SizedBox(height: 9),
              PlaylistCard(color: Colors.white,color2: Colors.purple,),
              SizedBox(height: 9),
              PlaylistCard(color: Colors.greenAccent,color2: Colors.red,),
            ],
          ),
        ),
      ),
    );
  }
}