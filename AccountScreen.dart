import 'package:flutter/material.dart';
import 'Login.dart';
import 'Start.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blue.shade200, Colors.blueGrey],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)
          ),
          child: MyStatelessWidget(),)
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset(
            'assets/images/iceberg.png',
            height: 300,
            width: 300,
          ),
          RaisedButton(
            //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
            onPressed: () {

            },
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            color: Colors.blue,
            textColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30))),

            // padding: const EdgeInsets.all(20),
            child: const Text('Sign Up', style: TextStyle(fontSize: 20)),
          ),
          RaisedButton(
            //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginDemo()),
              );
            },
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
            color: Colors.blue,
            textColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30))),

            // padding: const EdgeInsets.all(20),
            child: const Text('Login', style: TextStyle(fontSize: 20)),
          ),
          RaisedButton(
            //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Start()),
              );
            },
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
            color: Colors.blue,
            textColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30))),

            // padding: const EdgeInsets.all(20),
            child: const Text(
              'Login as Guest',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}