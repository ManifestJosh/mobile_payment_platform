import 'package:flutter/material.dart';
import 'package:mobile_payment_platform/pages/login.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool? isChecked = false;
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Welcome to W4LLET",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
          ),
          Form(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 30.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        labelText: 'First Name',
                        hintText: 'First Name',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your first Name';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person_2_outlined),
                        labelText: 'Last Name',
                        hintText: 'Last Name',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email_outlined),
                        labelText: 'E-mail',
                        hintText: 'E-mail',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.alternate_email_outlined),
                        labelText: 'UserName',
                        hintText: 'UserName',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.password_rounded),
                        labelText: 'Password',
                        hintText: 'Use alphabets and symbols only',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.password_rounded),
                        labelText: 'Confirm Password',
                        hintText: 'Confirm Password',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    FittedBox(
                      alignment: Alignment.center,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Checkbox(
                                value: isChecked,
                                activeColor: Colors.blue,
                                tristate: true,
                                onChanged: (newBool) {}),
                          ),
                          Text(
                              "By creating an account, you agree with our Terms and Condition")
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ButtonStyle(),
                        child: Text("SIGN UP"),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(height: 20),
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
                              label: Text('Sign Up with Google')),
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
                              return LoginScreen();
                            }));
                          },
                          child: const Text.rich(TextSpan(
                              text: "Already have an Account ?",
                              children: [
                                TextSpan(
                                    text: 'Log in',
                                    style: TextStyle(color: Colors.blue))
                              ]))),
                    )
                  ]),
            ),
          )
        ]),
      ),
    );
  }
}
