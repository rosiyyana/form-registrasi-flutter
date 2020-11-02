import 'package:flutter/material.dart';
import '../mixins/validation.dart';

class RegisterScreen extends StatefulWidget {
  createState() {
    return RegisterScreenState();
  }
}

class RegisterScreenState extends State<RegisterScreen> with Validation {
  final formKey = GlobalKey<FormState>();
  // DEFINE VARIABLE
  String name = '';
  String address = '';
  String email = '';
  String password = '';
  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(20.0), //SET MARGIN DARI CONTAINER
      child: Form(
          key: formKey,
          child: Column(
            //CHILDREN DARI COLUMN BERISI 4 BUAH OBJECT YANG AKAN DI-RENDER, YAKNI
            // TextInput UNTUK NAME, EMAIL, PASSWORD DAN TOMBOL DAFTAR
            children: [
              nameField(),
              emailField(),
              passwordField(),
              clasField(),
              registerButton(),
            ],
          )),
    );
  }

  Widget nameField() {
    //MEMBUAT TEXT INPUT
    return TextFormField(
        decoration: InputDecoration(
            labelText: 'Nama Lengkap' //DENGAN LABEL Nama Lengkap
            ),
        validator: validateName,
        onSaved: (String value) {
          name = value;
        }
        //AKAN BERISI VALIDATION
        );
  }

  Widget clasField() {
    //MEMBUAT TEXT INPUT
    return TextFormField(
        decoration: InputDecoration(labelText: 'Kelas' //DENGAN LABEL Alamat
            ),
        validator: validateClas,
        onSaved: (String value) {
          address = value;
        }
        //AKAN BERISI VALIDATION
        );
  }

  Widget emailField() {
    return TextFormField(
        keyboardType:
            TextInputType.emailAddress, // KEYBOARD TYPENYA ADALAH EMAIL ADDRESS
        //AGAR SYMBOL @ DILETAKKAN DIDEPAN KETIKA KEYBOARD DI TAMPILKAN
        decoration: InputDecoration(
          labelText: 'Email',
          hintText: 'email@example.com',
        ),
        //AKAN BERISI VALIDATION
        validator: validateEmail,
        onSaved: (String value) {
          email = value;
        });
  }

  Widget passwordField() {
    return TextFormField(
        obscureText: true, //KETIKA obsecureText bernilai TRUE
        //MAKA SAMA DENGAN TYPE PASSWORD PADA HTML
        decoration: InputDecoration(
          labelText: 'Password',
          hintText: 'Enter Password',
        ),
        //AKAN BERISI VALIDATION
        validator: validatePassword,
        onSaved: (String value) {
          password = value;
        });
  }

  Widget registerButton() {
    //MEMBUAT TOMBOL
    return RaisedButton(
        color: Colors.lightGreen[900], //MENGATUR WARNA TOMBOL
        onPressed: () {
          //PERINTAH YANG AKAN DIEKSEKUSI KETIKA TOMBOL DITEKAN
          if (formKey.currentState.validate()) {
            formKey.currentState.save();

            print('Nama Lengkap: $name');
            print('Kelas: $address');
            print('Email: $email');
            print('Password: $password');
          }
        },
        child: Text('Daftar'),
        textColor: Colors.white //TEXT YANG AKAN DITAMPILKAN PADA TOMBOL
        );
  }
}
