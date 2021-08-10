import 'package:flutter/material.dart';
import 'AccountScreen.dart';

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue.shade200,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                scale: 5,
                image: AssetImage('assets/images/cut.png'),
                alignment: Alignment.bottomCenter),
            gradient: LinearGradient(
                colors: [Colors.blue.shade200, Colors.blueGrey],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: new OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(25.0),
                      ),
                    ),
                    prefixIcon: Icon(Icons.account_circle_outlined),
                    labelText: 'Email',
                    hintText: 'Enter valid email e.g. abc@gmail.com'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: new OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(25.0),
                      ),
                    ),
                    prefixIcon: Icon(Icons.lock),
                    labelText: 'Password',
                    hintText: 'Enter secure password'),
              ),
            ),
            FlatButton(
                onPressed: () {
                  //TODO FORGOT PASSWORD SCREEN GOES HERE
                },
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                )),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => MyStatelessWidget()));
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            FlatButton(
                onPressed: () {
                  //TODO FORGOT PASSWORD SCREEN GOES HERE
                },
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Or Login with\n'
                    'Does not have an account?',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                )),
            FlatButton(
              textColor: Colors.blueAccent,
              child: Text(
                'Sign Up',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              onPressed: () {
                //TO DO SIGN UP
              },
            ),
          ],
        ),
      ),
    );
  }
}
