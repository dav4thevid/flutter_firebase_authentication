import 'package:flutter/material.dart';
import 'package:flutter_practice/Screens/Homepage.dart';
import 'package:flutter_practice/Screens/SignIn.dart';
import 'package:flutter_practice/Screens/SignUp.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async{
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: SignUpScreen.id,
      routes: {
        SignUpScreen.id: (context) => SignUpScreen(),
        SignInScreen.id: (context) => SignInScreen(),
        HomepageScreen.id: (context) => HomepageScreen(),
      },
    );
  }
}



