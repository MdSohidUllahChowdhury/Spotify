import 'package:flutter/material.dart';
import 'package:spotify/container_call.dart';
import 'package:spotify/library.dart';
import 'package:spotify/uni_call.dart';


class Spotify extends StatefulWidget {
  const Spotify({super.key});

  @override
  State<Spotify> createState() => _SpotifyState();
}

class _SpotifyState extends State<Spotify> {
  @override
  Widget build(BuildContext context) {
    return 
    
    Scaffold(
    backgroundColor: Color.fromARGB(239, 0, 0, 0),
      
      body:
      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(children: [
            
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: 
                  NetworkImage('https://avatars.githubusercontent.com/u/157578225?v=4'),
                  ),
                  SizedBox(width: 8,),
                
                
                ElevatedButton(style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green
                  
                ),
                  onPressed: (){},
                 child: Text('All',style:TextStyle(color: Colors.black) ,),
                 
                 
                 ),SizedBox(width: 8,),
               
               
                ElevatedButton(style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(69, 70, 65, 65)),
                  onPressed: (){},
                   child: Text('Music',style: TextStyle(color: Colors.white),),),
              ],
            ),
              SizedBox(height: 12,),
   //! Playing     
   Row(
    children: [
      Uni_Call(title: 'Baghdhara', link: 'https://i.scdn.co/image/ab6761610000e5eb4f5862c696d99d3d3b5dd83e'),
      SizedBox(width: 8,),
      
      Uni_Call(title: 'Sohojhiya', link: 'https://lastfm.freetls.fastly.net/i/u/ar0/e3d5bdda2666b91a2cd9524d1bc4ecbd.jpg')
    ],
   ),
   SizedBox(height: 8,),

   Row(
    children: [
      Uni_Call(title: 'Weekend', link: 'https://cdns-images.dzcdn.net/images/cover/7c5999407b612875c906d7ded6358664/264x264.jpg'),
      SizedBox(width: 8,),

      Uni_Call(title: 'Selena', link: 'https://upload.wikimedia.org/wikipedia/en/a/ae/Selena_Gomez_-_For_You_%28Official_Album_Cover%29.png')
    ],
   ),
   SizedBox(height: 8,),

   Row(
    children: [
      Uni_Call(title: 'Bhrom', link: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1XFextQZJAM3YJ9eJyzpqPomcA7_tyeRmF65SdhP4NQ&s'),
      SizedBox(width: 8,),
      Uni_Call(title: 'Night Change', link: 'https://www.jbhifi.com.au/cdn/shop/products/628446-Product-0-I_1024x1024.jpg')
    ],
   ),
   SizedBox(height: 8,),

   Row(
    children: [
      Uni_Call(title: 'Epitaph', link: 'https://cdns-images.dzcdn.net/images/cover/4abf756ed683c4c32c47ed28637602bc/500x500.jpg'),
      SizedBox(width: 8,),
      Uni_Call(title: 'Zayn Malik', link: 'https://cdns-images.dzcdn.net/images/cover/1884f804fed656229c6848c85fea9950/264x264.jpg')
    ],
   ),
   SizedBox(height: 8,),
          
          //! Your Top Mix
          SizedBox(height: 14,),
          
          Row(
            children: [
              Text('Your Top Mixes',style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white),)
            ],
          ),
          SizedBox(height: 14,),
          
          SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row( 
              children: [
                Calling(),
                SizedBox(width: 8,),

                Calling(),
                SizedBox(width: 8,),

                Calling(),
                SizedBox(width: 8,),

                Calling(),
                SizedBox(width: 8,),

                Calling(),
                SizedBox(width: 8,),
              ],
            ),
            
          ),
          SizedBox(height: 14,),
        
        
        
          //! Recommend page
        
          SizedBox(height: 10,),
          Row(
            children: [
              Text('Recommended For Today',style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white),)
            ],
          ),
          SizedBox(height: 10,),
          
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
            child: Row( 
              children: [
                 Calling(),
                SizedBox(width: 8,),

                Calling(),
                SizedBox(width: 8,),

                Calling(),
                SizedBox(width: 8,),

                Calling(),
                SizedBox(width: 8,),

                Calling(),
                SizedBox(width: 8,),
              ],
            ),
            
          ),
          SizedBox(height: 14,),

          //!jump Back In

          Row(
            children: [
              Text('Jump Back In',style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white),)
            ],
          ),
          SizedBox(height: 10,),
          
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
            child: Row( 
              children: [
                 Calling(),
                SizedBox(width: 8,),

                Calling(),
                SizedBox(width: 8,),

                Calling(),
                SizedBox(width: 8,),

                Calling(),
                SizedBox(width: 8,),

                Calling(),
                SizedBox(width: 8,),
              ],
            ), 
          ),
          
          ]
          ),
          
        ),
      ),




      //! Controller
       bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 8,
        unselectedFontSize: 8,
        iconSize: 20,
        elevation: 0,
        backgroundColor: Color.fromARGB(26, 54, 48, 48),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_sharp),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search_outlined),label: 'Search'),
        
        BottomNavigationBarItem(
          icon: InkWell(onTap: ()
          {
            Navigator.push(context,
             MaterialPageRoute(builder: (context)=>Library()));
          },
          child: Icon(Icons.library_music_rounded)
          ),
          label: 'Library',
          ),

       ]
       ),
    );
  }
}