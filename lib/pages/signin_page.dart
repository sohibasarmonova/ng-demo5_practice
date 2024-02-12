import 'package:flutter/material.dart';
import 'package:untitled/pages/home_page.dart';
import 'package:untitled/pages/signup_page.dart';

class SignInPage extends StatefulWidget {
  static const String id="signin_page";

  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage>{

  _callSignUpPage(){
  Navigator.pushReplacementNamed(context, SignUpPage.id);

  }
  _callHomePage(){
    Navigator.pushReplacementNamed(context, HomePage.id);
  }

  @override
  Widget build(BuildContext context) {
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
                crossAxisAlignment: CrossAxisAlignment.center,
                //mainAxisAlignment: MainAxisAlignment.center,

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

            const SizedBox(height: 30,),
            
                  //#Emailpart
                  Container(
                    //margin: EdgeInsets.only(top: 10),
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
                  //#password part
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
                        hintText:"Password" ,
                        border: InputBorder.none,

                        hintStyle: TextStyle(fontSize: 18,color: Colors.white54),
            
                      ),
                    ),
                  ),
            
                    //#signButton
            
                  GestureDetector(
                    onTap: _callHomePage,
                    child: Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 10),
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                       borderRadius:BorderRadius.circular(15),
                      ),
                      child:Center(
                        child:Text("Sign In",style: TextStyle(fontSize: 18,color: Colors.white),
                      ),
                    ),
                  ),
                  ),
            


                              Expanded(

                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.end, children: [
                                    Container(

                                      //  margin: EdgeInsets.only(top: 10),
                                        height: 48,
                                        child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Alredy have an account?",style: TextStyle(color: Colors.white),
                                      ),
                                      SizedBox(width: 10,),
                                      GestureDetector(
                                        child: Text("Sign Up",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),
                                        ),
                                        onTap: (){
                                          _callSignUpPage();
                                        },
                                      ),
                                       ],
                                      )
                                      ),
                                  ],
                                ),
                              ),




            //
                    ],
                  ),
           ),
            ],
       ),
     ),

    );
  }
}
