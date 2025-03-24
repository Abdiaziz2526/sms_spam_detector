import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import 'package:sms_spam_detector_app/screens/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String? errorMessage;

  void register() {
    setState(() {
      if (usernameController.text == "Addison Steeves") {
        errorMessage = "Username already exists.";
      } else {
        errorMessage = null;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Registration Successful"), backgroundColor: Colors.green),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Let's Start!", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.black)),
            SizedBox(height: 10),
            if (errorMessage != null)
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.red.shade100,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.red),
                ),
                child: Row(
                  children: [
                    Expanded(child: Text(errorMessage!, style: TextStyle(color: Colors.red))),
                    GestureDetector(
                      onTap: () => setState(() => errorMessage = null),
                      child: Icon(Icons.close, color: Colors.red),
                    ),
                  ],
                ),
              ),
            SizedBox(height: 20),
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                labelText: "Username",
                prefixIcon: Icon(IconlyLight.profile, color: Colors.blueGrey),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: "Email",
                prefixIcon: Icon(IconlyLight.message, color: Colors.blueGrey),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                prefixIcon: Icon(IconlyLight.lock, color: Colors.blueGrey),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: register,
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(12),
                ),
                alignment: Alignment.center,
                child: Icon(IconlyLight.arrow_right, color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                ),
                child: Text("Sign in", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blueAccent)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
