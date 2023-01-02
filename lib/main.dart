import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mbproject/registrationscreen.dart';
import 'loginscreen.dart';
import 'otp.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      theme: ThemeData(primarySwatch: Colors.green),
      //initialRoute: 'login',
      //routes: {'login': (context) => LoginScreen(), 'otp': (context) => Otp()},
    );
  }
}
