import 'package:flutter/material.dart';
import 'package:untitled/pages/feed_page.dart';

import '../services/color_service.dart';
class HomePage extends StatefulWidget {
  static String id="home_page";
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();



}

class _HomePageState extends State<HomePage> {
  var _pages=[
    FeedPage(),
    FeedPage(),
    FeedPage(),
    FeedPage(),
    FeedPage(),
  ];
  int currentPage=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(

        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("Instagram",style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          icon: Icon(Icons.camera_alt_outlined,color: Colors.white,),
          onPressed: (){},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.tv,color: Colors.white,),
            onPressed: (){},
          ),
    IconButton(
    icon: Icon(Icons.send_rounded,color: Colors.white,),
    onPressed: (){},
    ),
    ],
      ),



      body: _pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
      currentIndex: currentPage,
        onTap: (i){
        setState(() {
          currentPage=i;
        });
        },
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedItemColor: Colors.black,
        items: [

          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label:""
    ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label:"search"
    ),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined),
              label:"add"
    ),
          BottomNavigationBarItem(

              icon: Icon(Icons.favorite),
              label:"like"

          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label:"person"
          )
        ],
      ),
    );
  }
}
