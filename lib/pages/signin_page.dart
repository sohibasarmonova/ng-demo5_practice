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
      appBar: AppBar(

      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          
          children: [
            //#logopart
            Text(
              "Welcome !",
              style: TextStyle(
              //color: Colors.black,
              fontSize: 35,
              fontFamily: "Billabong",
            ),
            ),
            Container(
              width: double.infinity,
              //padding: EdgeInsets.all(20),
              //color: Colors.grey,
             // margin: EdgeInsets.only(top: 10),
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                Text("Enter your phone number and password",style: TextStyle(color: Colors.black87),

                ),
                 // SizedBox(width: 10,),
                ],

              ),
            ),


            //#Emailpart
            Container(
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[200],

              ),
              child: TextField(
                style: TextStyle(fontSize: 16),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(20),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.amberAccent),
                    borderRadius: BorderRadius.circular(15)

                  ),
                  hintText: "+998(--)------",
                  hintStyle: TextStyle(color: Colors.grey)
                ),
              ),
            ),
            //#password part
            Container(
              margin: EdgeInsets.only(top:10),
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[200],

              ),
              child: TextField(
                style: TextStyle(fontSize: 16),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.amberAccent),
                      borderRadius: BorderRadius.circular(15)

                    ),
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.grey)
                ),
              ),
            ),



              //#signButton

            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 10),
              height: 48,
              child: MaterialButton(
                color: Colors.amber,
                onPressed: (){
                  _callHomePage();

                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
                textColor: Colors.white,
                child: Text("Sign In",style: TextStyle(fontSize: 16),),
              ),

            ),



            Container(
              margin: EdgeInsets.only(top: 10),
              height: 48,
              //color: Colors.grey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Don't have an account?",style: TextStyle(color: Colors.black87),
                  ),
                  SizedBox(width: 10,),
                  GestureDetector(
                    child: Text("Sign Up",style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold),
                    ),
                    onTap: (){
                      _callSignUpPage();
                    },
                  )

                ],
              ),
            ),


        ]
      ),
    ),
    );
  }
}
