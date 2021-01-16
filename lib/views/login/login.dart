import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginState();
  }
}

class LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                  icon: Icon(Icons.people), labelText: "account"),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  icon: Icon(Icons.lock), labelText: "password"),
            ),
            RaisedButton(
              color: Colors.blue,
              onPressed: () => {Navigator.pushNamed(context, "home")},
              child: Text(
                "login",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
