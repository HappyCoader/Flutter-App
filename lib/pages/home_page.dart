import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int age = 32;
    String name = "Sameer";
    String email = "sameer@gmgggggail.com";
    String data = "Auth Details\nname = $name\nage = $age \nemail = $email";

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("LaHub"),
      ),
      drawer: const Drawer(backgroundColor: Colors.black, surfaceTintColor: Colors.white,),
      body: Center(
        child: Container(
          child: Center(child: Text(data, textAlign: TextAlign.center,)),
        ),
      ),
    );
  }
}
