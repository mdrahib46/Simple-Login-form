import 'package:loginportal/LoginPage.dart';
import 'package:loginportal/Register.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        'login': (context) => MyLogin(),
        'register': (context) => RegisterPage(),
      },
    ),
  );
}
