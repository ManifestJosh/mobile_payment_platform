import 'package:flutter/material.dart';

import 'login.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Positioned(
                child: IconButton(
              icon: Icon(Icons.arrow_back_ios_new_outlined),
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return LoginScreen();
                  }),
                );
              },
            )),
            SizedBox(
              height: 20,
            ),
            Text(
              "Forgot Password? ",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
            ),
            Text("Kindly submit your email below"),
            SizedBox(
              height: 30,
            ),
            Form(
                child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                labelText: 'E-mail',
                hintText: 'E-mail',
                border: OutlineInputBorder(),
              ),
            )),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Submit",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
