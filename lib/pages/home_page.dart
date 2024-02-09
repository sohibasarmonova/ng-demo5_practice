import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  static String id="home_page";
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Colors.amber,
        title: Text("Internation",style: TextStyle(

          color: Colors.black,
          fontSize: 35,
        fontFamily: "Billabong",
        ),
        ),
      ),
      body: Center(
        child: Text("Welcome to Tinstagram"),
      ),
    );
  }
}
