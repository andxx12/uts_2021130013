import 'package:flutter/material.dart';
import 'product_screen.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            //logo or image & text
            children: <Widget>[
              //logo image
              Center(
                child: Image.network(
                  '',
                  height: 150,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              //title
              const Text(
                'Welcome to Nekoshop',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),

              //user name text Form Field
              TextField(
                controller: _usernameController,
                decoration: const InputDecoration(labelText: "Email"),
              ),
              TextField(
                controller: _passwordController,
                decoration: const InputDecoration(labelText: "Password"),
                obscureText: true,
              ),
              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  // Implement logic for login authentication
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => ProductScreen()),
                  );
                },
                child: const Text("Login"),
              )
            ]),
      ),
    );
  }
}
