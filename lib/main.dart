import 'package:flutter/material.dart';
import 'screens/login_form.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Camera',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        unselectedWidgetColor: Colors.white,
      ),
      home: const LoginForm(),
    );
  }
}
