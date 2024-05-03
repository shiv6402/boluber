import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_map/flutter_map.dart';

class book extends StatefulWidget {
  const book({super.key});

  @override
  State<book> createState() => _bookState();
}

class _bookState extends State<book> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Column(
        children: [ Center(
          child: RichText( text: const 
          TextSpan( text: "Book",
           style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold),
        ))),   const Text("Where would you like to go?"),
          const SizedBox(height: 10),
          const TextField(
            decoration: InputDecoration(
              hintText: "Where to",
              prefixIcon: Icon(Icons.location_on),
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 20),]
          // Add more widgets for cost, time, vehicle type, etc.
      )
    );
  }
}
         
 
