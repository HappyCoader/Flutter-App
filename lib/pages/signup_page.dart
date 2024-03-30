import 'package:class_1/companents/functions.dart';
import 'package:class_1/pages/Login_page.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    var name = TextEditingController();
    var email = TextEditingController();
    var password = TextEditingController();
    var confirmPassword = TextEditingController();

    return Material(
      child: Scaffold(
          appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),title:
          Text("Sign Up", style: TextStyle(fontWeight: FontWeight.bold,
              color: Colors.white)),
            backgroundColor: Colors.deepPurple,),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10, horizontal: 30),
                  child: Image.asset("assets/images/signup.png"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 30),
                  child: Column(children: [
                    SizedBox(height: 20,),
                    textField("Enter Your Name", "Name", name),
                    textField("Enter Your Email", "Email", email),
                    textField("Enter Your Password", "Password", password),
                    textField("Enter Your Confirm Password", "Confirm Password", confirmPassword),
                    SizedBox(height: 20,),
                    ElevatedButton(onPressed:(){} , child:
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 10),
                      child: Text("Sign Up",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                    ),
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.purple)),
                    ),
                    SizedBox(height: 20,),
                   TextButton(onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder:(context)=>Login()));
                   }, child:Text("Already Have an Account LOGIN?",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),)
                  ],),
                )
              ],
            ),
          )

      ),
    );
  }
}
