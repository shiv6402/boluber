import 'package:bluber/firebase_options.dart';
import 'package:bluber/login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main()
async { Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(214, 87, 85, 85)),
        useMaterial3: true,
      ),
      home: const login(),
      debugShowCheckedModeBanner: false,
    );
  }
}

