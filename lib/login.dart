import 'package:bluber/homepage.dart';
import 'package:bluber/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
 import 'dart:convert';
import 'package:http/http.dart'as http;
import 'package:bluber/my_textfield.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
 final emailController=TextEditingController();
 final passwordController=TextEditingController();
void signUserIn() async {
showDialog(
context: context,
builder: (context) => const Center(
child: CircularProgressIndicator(),
),
);

final String email = emailController.text;
final String password = passwordController.text;

final response = await loginUser(email, password);

// Hide the progress indicator
Navigator.of(context).pop();

if (response.statusCode == 201) {
// Registration successful
// final responseData = jsonDecode(response.body);
// final token = responseData['token'];

// Store the token securely
// await widget.storage.write(key: 'token', value: token);
//print('Token stored securely');

showDialog(
context: context,
builder: (context) => AlertDialog(
title: const Text('Login Successful'),
content: const Text('You have successfully logged in.'),
actions: [
TextButton(
onPressed: () {
Navigator.of(context).pop();
Navigator.pushReplacement(
context,
MaterialPageRoute(builder: (context) => const HomePage()),
);
},
child: const Text('OK'),
),
],
),
);
} else {
// Registration failed
showDialog(
context: context,
builder: (context) => AlertDialog(
title: const Text('Login Failed'),
content: Text('Error: ${response.body}'),
actions: [
TextButton(
onPressed: () {
Navigator.of(context).pop();
},
child: const Text('OK'),
),
],
),
);
}
}

Future<http.Response> loginUser(
String email, String password, ) async {
const String apiUrl =
'http://127.0.0.1:8000/api/login'; // Replace with your Laravel API endpoint

final Map<String, String> data = {
'email': email,
'password': password,
};

final response = await http.post(
Uri.parse(apiUrl),
body: jsonEncode(data),
headers: {'Content-Type': 'application/json'},
);

return response;
}
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor:Color.fromARGB(255, 228, 225, 225),
      body: Padding(
        padding: const EdgeInsets.all(60.0),
        child: Container(
            child:  Column(children: [
          const Text(
        "Boluber",textAlign: TextAlign.center,
        style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold),
          ),
          MyTextField(
controller: emailController,
hintText: 'Email',
obscureText: false,
labeltext: 'email',
prefixIcon: Icon(Icons.usb_off_rounded),
suffixIcon: null,
),
const SizedBox(height: 10),
// password textfield
MyTextField(
controller: passwordController,
hintText: 'Password',
obscureText: true, labeltext: 'password', prefixIcon: Icon(Icons.lock), suffixIcon: null,
),
          const TextField(
            decoration: InputDecoration(
                hintText: "Email Address", border: OutlineInputBorder()),
          ),
          const SizedBox(height: 10,),
          const TextField(
            decoration: InputDecoration(
                hintText: "Password", border: OutlineInputBorder()),
          ),
          const SizedBox(height: 10,),
          ElevatedButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){return const HomePage();})
            );
          },
          child:
          const Text("login")),
          //harpsigyapr8g
             ElevatedButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){return const Register();})
            );
          },
          
          child:
          const Text("Register")),
            Image.asset("Gwagon.webp",width: 200, height: 139,),
            RichText(text: const TextSpan(
              text: "Welcome to boluber."
            )),
            Text("Boluber is a luxry taxi service that gets you to your destination in style and comfort.")
        ])),
      ),
      // create the login page to be astetic 
      //again add the brand logo where required 
      
      
    );
  
  }
  
  MyTextField({required TextEditingController controller, required String hintText, required bool obscureText, required String labeltext, required Icon prefixIcon, required suffixIcon}) {}
}