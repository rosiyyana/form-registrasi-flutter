import 'package:flutter/material.dart';
import 'screens/register.dart';

class App extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      title: 'Registrasi Anggota',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Form Registrasi'),
          backgroundColor: Colors.lightGreen[900],
        ),
        body: RegisterScreen(),
      ),
    );
  }
}
