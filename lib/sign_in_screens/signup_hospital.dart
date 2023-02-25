import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:healthspace_test1/settings_screens/help.dart';
import 'package:healthspace_test1/settings_screens/help/help_center.dart';
import 'sign_in_hospital.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
//import 'dart:ffi';
// import 'package:healthspace_settings/screens/help.dart';
// import 'signin.dart';
// import 'registeras.dart';

class SignUp_Hospital extends StatefulWidget {
  const SignUp_Hospital({Key? key}) : super(key: key);

  @override
  State<SignUp_Hospital> createState() => _SignUp_HospitalState();
}

class _SignUp_HospitalState extends State<SignUp_Hospital> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: 150,
            color: Colors.white,
            child: Image.asset(
              "assets/logo.jpg",
              height: 60,
              width: 60,
            ),
          ),
          Container(
            height: 50,
            color: Colors.white,
            padding: const EdgeInsets.only(left: 15),
            child: const Text(
              "Hospital Sign Up",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Color(0xFF179797),
              ),
            ),
          ),
          Container(
            height: 1000,
            color: const Color(0xFF179797),
            child: const MyCustomForm(),
          ),
        ],
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

// saving form after validation
  void _SignUpHospital() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
  }

  var name = '';
  var email = '';
  var password = '';
  var address = '';
  var reg_id = '';
  var phone_number = '';

  signUpHospital() async {
    var response = await http.post(
      Uri.parse(
          'https://healthspace-production.up.railway.app/healthspace/option/register_hospital'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        "name": name,
        "email": email,
        "password": password,
        "phone_number": phone_number,
        "address": address,
        "reg_id": reg_id,
      }),
    );

    if (response.statusCode == 200) {
      print('Success' + response.body.toString());
      Navigator.push(
          context, MaterialPageRoute(builder: (_) => const SignInHospital()));
    } else {
      print('Failed' + response.body.toString());
      print('Something went wrong');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(60, 30, 25, 10),
            child: TextFormField(
              onChanged: (value) {
                name = value;
              },
              validator: (value) {
                if (value!.isEmpty ||
                    !RegExp(r'^[a-z A-Z]+$').hasMatch(value!)) {
                  return 'Please Enter Correct Name';
                }
                return null;
              },
              decoration: const InputDecoration(
                filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.white,
                      width: 2.0,
                      style: BorderStyle.solid),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                hintText: "Hospital Name",
                hintStyle: TextStyle(fontWeight: FontWeight.bold),
                fillColor: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(60, 10, 25, 10),
            child: TextFormField(
              onChanged: (value) {
                address = value;
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter Hospital address';
                }
                return null;
              },
              decoration: const InputDecoration(
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                hintText: 'Hospital Address',
                hintStyle: TextStyle(fontWeight: FontWeight.bold),
                fillColor: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(60, 10, 25, 10),
            child: TextFormField(
              onChanged: (value) {
                reg_id = value;
              },
              decoration: const InputDecoration(
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                hintText: 'Hospital Registration ID',
                hintStyle: TextStyle(fontWeight: FontWeight.bold),
                fillColor: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(60, 10, 25, 10),
            child: TextFormField(
              onChanged: (value) {
                phone_number = value;
              },
              validator: (value) {
                if (value!.isEmpty ||
                    value.length > 10 ||
                    !RegExp(r'^[0-9]+$').hasMatch(value!)) {
                  return 'Please Enter correct Contact Number';
                }
                return null;
              },
              decoration: const InputDecoration(
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                hintText: 'Hospital Contact Number',
                hintStyle: TextStyle(fontWeight: FontWeight.bold),
                fillColor: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(60, 10, 25, 10),
            child: TextFormField(
              onChanged: (value) {
                email = value;
              },
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !value.contains('@') ||
                    !value.contains('.')) {
                  return 'Please enter valid email';
                }
                return null;
              },
              decoration: const InputDecoration(
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                hintText: 'Hospital E-mail Address',
                hintStyle: TextStyle(fontWeight: FontWeight.bold),
                fillColor: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(60, 10, 25, 10),
            child: TextFormField(
              onChanged: (value) {
                password = value;
              },
              obscureText: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter  strong password';
                }
                return null;
              },
              decoration: const InputDecoration(
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                hintText: 'Password',
                hintStyle: TextStyle(fontWeight: FontWeight.bold),
                fillColor: Colors.white,
              ),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.fromLTRB(60, 10, 25, 10),
          //   child: TextFormField(
          //     obscureText: true,
          //     validator: (value) {
          //       if (value == null || value.isEmpty) {
          //         return 'Please enter password again';
          //       }
          //       return null;
          //     },
          //     decoration: const InputDecoration(
          //       filled: true,
          //       border: OutlineInputBorder(
          //         borderRadius: BorderRadius.all(Radius.circular(30)),
          //       ),
          //       hintText: 'Confirm Password',
          //       hintStyle: TextStyle(fontWeight: FontWeight.bold),
          //       fillColor: Colors.white,
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.fromLTRB(250, 5, 5, 5),
            child: OutlinedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: const BorderSide(color: Colors.red, width: 5),
                  ),
                ),
              ),
              onPressed: () {
                // if (_formKey.currentState!.validate()) {
                //   Navigator.push(context,
                //       MaterialPageRoute(builder: (_) => const SignIn()));
                // }
                if (_formKey.currentState!.validate()) {
                  signUpHospital();
                  // Navigator.push(context, MaterialPageRoute(builder: (_) => const SignIn()));
                }
              },
              child: const Text(
                "Submit",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(300, 25, 5, 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                    icon: const Icon(
                      Icons.help,
                      size: 30,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (builder) {
                        return Help();
                      }));
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
