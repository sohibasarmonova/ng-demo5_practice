import 'package:flutter/material.dart';
import 'package:untitled/pages/signin_page.dart';

class SignUpPage extends StatefulWidget {

  static const String id="signup_page";

  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  _callSignInPage(){
    Navigator.pushReplacementNamed(context, SignInPage.id);

  }


  @override
  Widget build(BuildContext context){
  return Scaffold (

  body: Container(

  width: MediaQuery.of(context).size.width,
  decoration: BoxDecoration(
  gradient: LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
  Color.fromRGBO(193,53,132,1),
  Color.fromRGBO(141,58,180,1),
  ]
  ),
  ),
  // width: double.infinity,
  padding: EdgeInsets.all(20),



  child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children:[
  Expanded(


  child: Column(
  mainAxisAlignment: MainAxisAlignment.center,

  children: [
  //#logopart
  Text(
  "Instagram",
  style: TextStyle(
  color: Colors.white,
  fontSize: 50,
  fontFamily: "Billabong",
  ),
  ),



  //#namePart
  Container(
  margin: EdgeInsets.only(bottom: 10),
  padding: EdgeInsets.only(left: 10,right: 10),
  height: 50,
  decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(15),
  color: Colors.white.withOpacity(0.2),

  ),
  child: TextField(
  style: TextStyle(color: Colors.white),
  decoration: InputDecoration(
  hintText:"Name" ,
  border: InputBorder.none,

  hintStyle: TextStyle(fontSize: 18,color: Colors.white54),

  ),
  ),
  ),


    //#Emailpart
    Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.only(left: 10,right: 10),
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white.withOpacity(0.2),

      ),
      child: TextField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          hintText:"Email" ,
          border: InputBorder.none,

          hintStyle: TextStyle(fontSize: 18,color: Colors.white54),

        ),
      ),
    ),
//#Password Part

    Container(

      padding: EdgeInsets.only(left: 15,right: 15),
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white.withOpacity(0.2),

      ),
      child: TextField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          hintText:"Password" ,
          border: InputBorder.none,

          hintStyle: TextStyle(fontSize: 18,color: Colors.white54),

        ),
      ),
    ),




  //#Comfirm part
  Container(
  margin: EdgeInsets.only(top: 10),
  padding: EdgeInsets.only(left: 10,right: 10),
  height: 50,
  decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(15),
  color: Colors.white.withOpacity(0.2),

  ),
  child: TextField(
  style: TextStyle(color: Colors.white),
  obscureText: true,
  decoration: InputDecoration(
  hintText:"Comfirm password" ,
  border: InputBorder.none,

  hintStyle: TextStyle(fontSize: 18,color: Colors.white54),

  ),
  ),
  ),

  //#signButton

  GestureDetector(
  onTap: (){},
  child: Container(
  width: double.infinity,
  margin: EdgeInsets.only(top: 10),
  height: 50,
  decoration: BoxDecoration(

  color: Colors.white.withOpacity(0.1),
  borderRadius:BorderRadius.circular(15),
  ),
  child:Center(
  child:Text("Sign Up",style: TextStyle(fontSize: 18,color: Colors.white),
  ),
  ),
  ),
  ),




                 Expanded(

                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       Container(
                       //color: Colors.blue,
                         margin: EdgeInsets.only(top: 10),
                         height: 48,
                         child: Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                         Text("Alredy have an account?",style: TextStyle(color: Colors.white),
                         ),
                         SizedBox(width: 10,),
                         GestureDetector(
                         child: Text("Sign In",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),
                         ),
                         onTap: (){
                         _callSignInPage();
                         },
                         ),
                         ],
                         )
                         ),
                     ],
                   ),
                 ),










  ],
  ),
  ),

  ],
  ),
  ),

  );
  }
}
