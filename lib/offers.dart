import 'package:flutter/material.dart';
class offers extends StatelessWidget {
  const offers({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Column(
        children: [ Center(
          child: RichText( text: const 
          TextSpan( text: "Offers",
           style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold),
        ))),
          RichText(text: const TextSpan(
            text :(" Invite a freind with the code bellow and get 40% off your next ride "))),
       RichText(text: const TextSpan(
            text :(" 8bKj7 "), style: TextStyle(fontSize: 24),))
      ],
      )
    );
  }
}