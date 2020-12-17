import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomepageScreen extends StatelessWidget {
  static String id = 'homepage';
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                // Implement logout functionality
                _auth.signOut();
                Navigator.pop(context);
              }),
        ],
        title: Text(
          'Homepage',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(child: Text('Homepage')),
    );
  }
}
