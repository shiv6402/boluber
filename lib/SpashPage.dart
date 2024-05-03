import 'dart:async';

import 'package:flutter/material.dart';
import 'login.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
@override
void initState() {
  super.initState(); Timer(const Duration(seconds:3), (){
   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const login())); 
});
}
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
} 

