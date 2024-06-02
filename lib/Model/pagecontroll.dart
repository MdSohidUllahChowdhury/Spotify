import 'package:flutter/material.dart';
import 'package:spotify/View/home.dart';
import 'package:spotify/View/library.dart';
import 'package:spotify/View/search.dart';


class PageControll extends StatefulWidget {
  const PageControll({super.key});

  @override
  State<PageControll> createState() => _PageControllState();
}

class _PageControllState extends State<PageControll> {
 
  int _onpageindex = 0; //? Where to index start 
  final _pagedata =[
     const SpotifyFeed(),
     const Search(),
     const Library() 
     ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _pagedata[_onpageindex],

       bottomNavigationBar: 
       BottomNavigationBar(
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_sharp),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search_outlined),label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.library_music_sharp),label: 'Library')
       ],
        currentIndex: _onpageindex,
         onTap: (gotopage){
          setState(() {
            _onpageindex = gotopage;
          });
         },

        selectedFontSize: 8,
        unselectedFontSize: 8,
        iconSize: 20,
        elevation: 0,
        backgroundColor: Color.fromARGB(242, 0, 0, 0),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,   
       ),
    );
  }
}