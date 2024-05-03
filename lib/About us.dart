import 'package:flutter/material.dart';
class AboutUs extends StatefulWidget {
  const AboutUs({super.key});
  @override
  State<AboutUs> createState() => _helpState();
}

class _helpState extends State<AboutUs> {


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Column(
        children: [ Center(
          child: RichText( text: const 
          TextSpan( text: "About us ",
           style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold),
        
        ))),RichText(text: const TextSpan(
            text :(" Welcom to Boluber.we are a luxury taxi service that provides not only cars but also,helicopters,plains and boats.Boluber was founded by the late great Shiv Patel in 1923.we have partended with prestigus companys who spesilize in luxty vehicles like, meyback, rorls roys, mansory ferari, lamborgini and koningzed just to name a few   ")
                    ))],
      )
    );
  }
}