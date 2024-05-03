// ignore: unused_import
import 'dart:developer';

import 'package:bluber/About%20us.dart';
import 'package:bluber/book.dart';
import 'package:bluber/help.dart';
// ignore: unused_import
import 'package:bluber/home.dart';
import 'package:bluber/offers.dart';
import 'package:bluber/onlinePayment.dart';
import 'package:bluber/profile.dart';
import 'package:bluber/tripStatus.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: ListView(padding: EdgeInsets.zero, children:  [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Color.fromARGB(195, 199, 204, 193),
          ),
          child: Text(" BOLUBER"),
        ),
        ListTile(

           leading: ElevatedButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
           return profile();    
            }));
          }, child: Icon(Icons.person)),
          title: Text("Profile"),
          tileColor: Color.fromARGB(255, 250, 250, 246),
        ),
        ListTile(

           leading: ElevatedButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
           return AboutUs ();    
            }));
          }, child: Icon(Icons.analytics)),
          title: Text("About us "),
          tileColor: Color.fromARGB(255, 250, 250, 246),
        ),ListTile(


          leading: ElevatedButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
           return const HomePage();    
            }));
          }, child: const Icon(Icons.home)),
          title: const Text("Home"),
          tileColor: const Color.fromARGB(255, 250, 250, 246),
        ),
        ListTile(

           leading: ElevatedButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
           return offers();    
            }));
          }, child: Icon(Icons.offline_share_rounded)),
          title: Text("offers"),
          tileColor: Color.fromARGB(255, 250, 250, 246),
        ),
        ListTile(

           leading: ElevatedButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
           return const tripStatus();    
            }));
          }, child: const Icon(Icons.safety_check)),
          title: const Text("trip status"),
          tileColor: const Color.fromARGB(255, 250, 250, 246),
        ),ListTile(

           leading: ElevatedButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
           return onlinePayment();    
            }));
          }, child: Icon(Icons.payment)),
          title: Text("online payment"),
          tileColor: Color.fromARGB(255, 250, 250, 246),
        ),ListTile(

           leading: ElevatedButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
           return help();    
            }));
          }, child: Icon(Icons.help)),
          title: Text("help"),
          tileColor: Color.fromARGB(255, 250, 250, 246),
        ),
        

      ])),
      appBar: AppBar(
        title: const Text(
          "BOLUBER",
          selectionColor: Color.fromARGB(0, 0, 0, 0),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 119, 118, 118),
      ),
      body: Padding(
        padding: const EdgeInsets.all(60.0),
        
        child: Container(
          child: Column(children: [
            Center(
              child: RichText(
                text: const TextSpan(
                    text: "Welcome",
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                    // Add more items in the drawer
                    // make sure you put an apropriate collor in the drawer
                    // create an icon for your app and put is in the required areas
                    // add buttons on the bottom to go back

                    ),
              ),
              
            ),
            Image.asset("enteringCar.png",width: 300, height: 300, 
            ),
            Text ("book your next trip through Land,water, or Air"),
            ElevatedButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
              return book();
            }));}, child: RichText(text: TextSpan(text: "Book"),))
          
          ]),
        ),
      ),
    );
  }
}
