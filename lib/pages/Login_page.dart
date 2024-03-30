import 'package:class_1/pages/signup_page.dart';
import 'package:flutter/material.dart';

import '../companents/functions.dart';

class Login extends StatelessWidget {
   Login({super.key});

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
         iconTheme: IconThemeData(color: Colors.white),
          title: Text(
            "Login",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.deepPurple,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Image.asset("assets/images/login_img.png"),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                child: Column(
                  children: [
                    textField("Enter Your Username", "Username", usernameController),
                    textField("Enter Your Password", "Password", passwordController),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 40),
                      child: ElevatedButton(
                        onPressed: () {
                          // Retrieve values from text fields
                          String username = usernameController.text;
                          String password = passwordController.text;
                          // Use the values as needed
                          print("Username: $username");
                          print("Password: $password");
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 40),
                          child: const Text(
                            "Sign In",
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.purple),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>SignUp()));
                    }, child:Text("Don't Have an Account?",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

