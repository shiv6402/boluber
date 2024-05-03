import 'package:bluber/login.dart';
import 'package:flutter/material.dart';
class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:Column(
        children: [ Center(
          child: RichText( text: const 
          TextSpan( text: "Register",
           style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold),
        ))),
        const TextField(
            decoration: InputDecoration(
                hintText: "Email Address", border: OutlineInputBorder()),
          ),
          const SizedBox(height: 10,),
          const TextField(
            decoration: InputDecoration(
                hintText: "phone number", border: OutlineInputBorder()),
          ),
           const TextField(
            decoration: InputDecoration(
                hintText: "Password", border: OutlineInputBorder()),
          ),
        const SizedBox(height: 10,),
          ElevatedButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){return const login();})
            );
          },
          child:
          const Text("continue")),
      ],
      )
    );
  }
}  
