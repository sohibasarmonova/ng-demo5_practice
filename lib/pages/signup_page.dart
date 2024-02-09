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
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            //#logopart
            Text(
              "Instagram",
              style: TextStyle(
                //color: Colors.black,
                fontSize: 35,
                fontFamily: "Billabong",
              ),
            ),
            //#namepart



            Container(
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey[200],

              ),
              child: TextField(
                style: TextStyle(fontSize: 16),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal),

                    ),
                    hintText: "Name",
                    hintStyle: TextStyle(color: Colors.grey)
                ),
              ),
            ),
            //#Emailpart



            Container(
              margin: EdgeInsets.only(top:10),
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey[200],

              ),
              child: TextField(
                style: TextStyle(fontSize: 16),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal),

                    ),
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.grey)
                ),
              ),
            ),
            //#password part



            Container(
              margin: EdgeInsets.only(top:10),
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey[200],

              ),
              child: TextField(
                style: TextStyle(fontSize: 16),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal),

                    ),
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.grey)
                ),
              ),
            ),
            //#conformpasword



            Container(
              margin: EdgeInsets.only(top: 10),
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey[200],
              ),
              child: TextField(
                style: TextStyle(fontSize: 16),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal),

                    ),
                    hintText: "Comfirm pssword",
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
                color: Colors.blue,
                onPressed: (){},
                textColor: Colors.white,
                child: Text("Sign Up",style: TextStyle(fontSize: 16),),
              ),
            ),



            Container(
              margin: EdgeInsets.only(top: 10),
              height: 48,
              //color: Colors.grey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Already have an account?",style: TextStyle(color: Colors.black87),
                  ),
                  SizedBox(width: 10,),
                  GestureDetector(
                    child: Text("Sign In",style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold),
                    ),
                    onTap: (){
                      _callSignInPage();
                    },
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
