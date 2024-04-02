import 'package:flutter/material.dart';

import 'Signup.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome Back,',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
              ),
              Form(
                  child: Container(
                padding: EdgeInsets.symmetric(vertical: 22.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email_outlined),
                          labelText: 'E-mail',
                          hintText: 'E-mail',
                          border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.key_rounded),
                          labelText: 'Password',
                          hintText: 'Password',
                          border: OutlineInputBorder(),
                          suffix: IconButton(
                            icon: Icon(Icons.remove_red_eye),
                            onPressed: () {},
                          )),
                    ),
                    SizedBox(height: 20),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text("Forgot Password?"),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('LOGIN'),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("OR "),
                        SizedBox(
                          width: double.infinity,
                          child: OutlinedButton.icon(
                              onPressed: () {},
                              icon: Image.asset(
                                'assets/google.png',
                                width: 15,
                              ),
                              label: Text('Sign in with Google')),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return SignUpPage();
                            }));
                          },
                          child: const Text.rich(TextSpan(
                              text: "Don't have an Account ?",
                              children: [
                                TextSpan(
                                    text: 'SignUp',
                                    style: TextStyle(color: Colors.blue))
                              ]))),
                    )
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
