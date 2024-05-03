import 'package:flutter/material.dart';
class help extends StatefulWidget {
  const help({super.key});

  @override
  State<help> createState() => _helpState();
}

class _helpState extends State<help> {
  @override
 Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [ Center(
          child: RichText( text: const 
          TextSpan( text: "Help",
           style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold),
        ))), RichText(text: const TextSpan(text:
        "For any conserns during your trip please contact the number bellow either through text or call.We do recomend you shere your trip deatails with someone you know and trust. "
         )),RichText(text: const TextSpan(
            text :(" 0768141996 "), style: TextStyle(fontSize: 24),))]
      )
    );
  }
  }
  