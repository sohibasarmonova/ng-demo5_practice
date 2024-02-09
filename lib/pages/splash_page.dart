import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled/pages/home_page.dart';
import 'package:untitled/pages/signin_page.dart';

class SplashPage extends StatefulWidget {
  static const String id="splash_page";
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {


  callHomePage(){
    //Navigator.pushReplacementNamed(context, HomePage.id);
    Navigator.pushReplacementNamed(context, SignInPage.id);
  }

  initTimer(){
   Timer(Duration(seconds: 2,),(){
    //print("Waited 2 second");
     callHomePage();
   });
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(50),
        color: Colors.white,
        child: Stack(
          children: [
            Center(
              child: Image.asset(
                "assets/images/ic_logo.png",
                height: 80,width:100,
              ),
            ),
            Container(
              //color: Colors.grey,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    child: Text(
                      "Powered by Fecbook",
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 17

                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),

      ),
    );
  }

}
