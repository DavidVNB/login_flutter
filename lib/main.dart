import 'package:flutter/material.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
      );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login',
        style: TextStyle(
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.bold,


        )
        ),
        backgroundColor: Colors.blue,
        elevation: 4,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'Email',
              prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                )
                )
              ),
              SizedBox(height: 16.0),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(labelText: 'Senha',
                 prefixIcon: Icon(Icons.password),
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(height: 32.0),
              ElevatedButton(
                onPressed: () {
                  // Lógica de autenticação do usuário
                },
                child: Text('Login'),
              ),
          ],
        ),
      ),
    );
  }
}