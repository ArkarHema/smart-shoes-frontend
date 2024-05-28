import 'package:flutter/material.dart';
import 'package:smartshoes/homepage.dart';
import 'package:smartshoes/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign Up/Login Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignUpLoginPage(),
    );
  }
}

class SignUpLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up/Login'),
      ),
      body: SignUpLoginBody(),
    );
  }
}

class SignUpLoginBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: 'Username',
            ),
          ),
          SizedBox(height: 20.0),
          TextField(
            decoration: InputDecoration(
              labelText: 'Password',
            ),
            obscureText: true,
          ),
          SizedBox(height: 20.0),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpPage()),
                  );
                },
                child: Text('Sign Up'),
              ),
              SizedBox(
                width: 70.0,
              ),
              ElevatedButton(
                onPressed: () {
                  // Implement login logic here
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Text('Login'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
