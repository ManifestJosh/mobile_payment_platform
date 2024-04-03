import 'package:flutter/material.dart';

import 'Signup.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final _formkey = GlobalKey<FormState>();
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();

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
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
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
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
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
                        onPressed: () {
                          if (_formkey.currentState != null &&
                              _formkey.currentState!.validate()) {
                            String email = _emailController.text;
                            String password = _passwordController.text;
                          }
                        },
                        child: Text('LOGIN'),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "OR",
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: OutlinedButton.icon(
                              onPressed: () {},
                              icon: Image.asset(
                                'assets/google.png',
                                width: 15,
                              ),
                              label: Text('Sign in with Google')),
                        ),
                      ],
                    ),
                    const SizedBox(
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
