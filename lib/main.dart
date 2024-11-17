import 'package:flutter/material.dart';

void main() {
  runApp( MainApp());
}

class MainApp extends StatefulWidget {
   MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  // Controllers for email and password fields
  final TextEditingController emailText = TextEditingController();
  final TextEditingController passwordText = TextEditingController();
  String email = "";
  String pass = "";
  String message = "";
    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Container(
            color: Colors.amber.shade50,
            padding:  EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child:  Text(
              'Login Page',
              style: TextStyle(
                color: Colors.lightBlueAccent,
              ),
            ),
          ),
        ),
        body: Padding(
          padding:  EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: emailText,
                decoration: InputDecoration(
                  hintText: 'Your Email',
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide:  BorderSide(color: Colors.grey),
                  ),
                ),
              ),
               SizedBox(height: 16.0), // Spacing between text fields
              TextField(
                controller: passwordText,
                obscureText: true, // Masking password
                decoration: InputDecoration(
                  hintText: 'Your Password',
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide:  BorderSide(color: Colors.grey),
                  ),
                ),
              ),
               SizedBox(height: 20),
              Text(
                "Your email address is $email and password is $pass",
                style:  TextStyle(fontSize: 16, color: Colors.black54),
                textAlign: TextAlign.center,
              ),
               SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    email = emailText.text;
                    pass = passwordText.text;
                    // Check if email and password are valid
                    if (email == "tariq@gmail.com" && pass == "112233") {
                      message = "Welcome";
                     
                    } else {
                      message = "Error";
                     
                    }
                  });
                },
                child:  Text('Login'),
              ),
               SizedBox(height: 20),
              Text(message, style:  TextStyle(fontSize: 16, color: Colors.red)), 
            ],
          ),
        ),
      ),
    );
  }
}
