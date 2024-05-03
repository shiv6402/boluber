
import 'package:bluber/login.dart';
import 'package:flutter/material.dart';
class profile extends StatefulWidget {
  const profile({super.key});

  @override
 
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
body: Column(
        children:  [const Center(
 
  child: Card(child: Text('Profile.',style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold),
  ))
),
Image.asset("profile-user.png",width: 50, height: 50, 
            ),
          RichText(text: const TextSpan(
            text :(" Welcome ")

                    )),const SizedBox(height: 10,),
          ElevatedButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){return const login();})
            );
          },
          child:
          const Text("Edit")),const TextField(
            decoration: InputDecoration(
                hintText: "Email Address", border: OutlineInputBorder()),
          ),
          const SizedBox(height: 10,),
          const TextField(
            decoration: InputDecoration(
                hintText: "Password", border: OutlineInputBorder()),
          ),
        ],
      ),
    );
  }
}