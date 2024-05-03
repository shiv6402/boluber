import 'package:flutter/material.dart';
class onlinePayment extends StatelessWidget {
  const onlinePayment
({super.key});

  @override
   Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [ Center(
          child: RichText( text: const 
          TextSpan( text: "Online payment",
           style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold),
        )))],
      )
    );
  }
  }

 