import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:healthspace_test1/settings_screens/help.dart';
import 'package:healthspace_test1/sign_in_screens/sign_in_donor.dart';
import 'package:healthspace_test1/sign_in_screens/sign_in_hospital.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:http/http.dart' as http;

List<String> items = ["MALE", "FEMALE"];
String dropdownValue = "MALE";

List<String> items1 = [
  "A_POSITIVE",
  "A_NEGATIVE",
  "O_POSITIVE",
  "O_NEGATIVE",
  "B_POSITIVE",
  "B_NEGATIVE",
  "AB_POSITIVE",
  "AB_NEGATIVE",
];
String dropdownValue1 = "A_POSITIVE";

class Sign_Up_Donor extends StatefulWidget {
  const Sign_Up_Donor({Key? key}) : super(key: key);

  @override
  State<Sign_Up_Donor> createState() => _Sign_Up_DonorState();
}

class _Sign_Up_DonorState extends State<Sign_Up_Donor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: <Widget>[
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
            "Donor Sign Up",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Color(0xFF179797),
            ),
          ),
        ),
        Container(
          height: 2000,
          color: Color(0xFF179797),
          child: MyCustomForm(),
        ),
      ]),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  //const MyCustomForm({super.key});
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  void _SignInDonor() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
  }

  var name = '';
  var nic = '';
  var address = '';
  var gender = '';
  var age = '';
  var weight = '';
  var blood_group = '';
  var expected_donation = '';
  var nearest_hospital = '';
  var email = '';
  var phone_number = '';
  var subordinate_contact = '';
  var password = '';

  registerDonor() async {
    var response = await http.post(
      Uri.parse(
          'https://healthspace-production.up.railway.app/healthspace/option/register_donor'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        "name": name,
        "email": email,
        "password": password,
        "gender": gender,
        "nic": nic,
        "phone_number": phone_number,
        "address": address,
        "age": age,
        "weight": weight,
        "blood_group": blood_group,
        "expected_donation": expected_donation,
        "subordinate_contact": subordinate_contact,
        "nearest_hospital": nearest_hospital
      }),
    );

    if (response.statusCode == 200) {
      print('Success' + response.body.toString());
      Navigator.push(
          context, MaterialPageRoute(builder: (_) => const SignInDonor()));
    } else {
      print('Failed' + response.body.toString());
      print('Something went wrong');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Center(
                child: Text('Basic Information',
                    style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold))),
            SizedBox(
              height: 10,
            ),
            LinearPercentIndicator(
              animation: true,
              animationDuration: 2000,
              barRadius: Radius.circular(15),
              lineHeight: 2,
              percent: 0.0,
              progressColor: Color.fromRGBO(67, 177, 177, 1),
              backgroundColor: Colors.white,
              curve: Curves.bounceIn,
              //center: Text('Progress 0%' ,  style: TextStyle(fontSize: 15.0 , color: Colors.white ,)),
            ),



            Padding(
              padding: const EdgeInsets.fromLTRB(60, 30, 25, 10),
              //padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
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
                  hintText: 'Name',
                  hintStyle: TextStyle(fontWeight: FontWeight.bold),
                  fillColor: Colors.white,
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.fromLTRB(60, 10, 25, 10),
              //padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              child: TextFormField(
                onChanged: (value) {
                  nic = value;
                },
                validator: (value) {
                  if (value!.isEmpty ||
                      value.length > 12 ||
                      !RegExp(r'^[0-9 v V]+$').hasMatch(value!)) {
                    return 'Please Enter correct NIC';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  hintText: 'NIC/ Drivers License',
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
                    return 'Please enter your address';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  hintText: 'Address',
                  hintStyle: TextStyle(fontWeight: FontWeight.bold),
                  fillColor: Colors.white,
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.fromLTRB(60, 10, 25, 10),
              //padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              child: TextFormField(
                onChanged: (value) {
                  age = value;
                },
                validator: (value) {
                  if (value!.isEmpty ||
                      value.length > 2 ||
                      !RegExp(r'^[0-9]+$').hasMatch(value!)) {
                    return 'Please Enter correct Age';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  hintText: 'Age',
                  hintStyle: TextStyle(fontWeight: FontWeight.bold),
                  fillColor: Colors.white,
                ),
              ),
            ),


            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 12,
            ),
            Row(
              children: [
                SizedBox(
                  width: 60,
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 14, left: 10),
                    child: Text("Gender",
                        style: TextStyle(fontSize: 15.0, color: Colors.black)),
                  ),
                  height: 50,
                  width: 190,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white),
                ),
                SizedBox(
                  width: 10,
                ),
                DropdownButton<String>(
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                      gender = dropdownValue;
                    });
                  },
                  //value: dropdownValue,
                  value: dropdownValue,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.white,
                    size: 40,
                  ),
                  dropdownColor: Color(0xFF179797),
                  items: items.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),



            Padding(
              padding: const EdgeInsets.fromLTRB(60, 10, 25, 10),
              //padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              child: TextFormField(
                onChanged: (value) {
                  weight = value;
                },
                validator: (value) {
                  if (value!.isEmpty ||
                      value.length > 2 ||
                      !RegExp(r'^[0-9]+$').hasMatch(value!)) {
                    return 'Please Enter correct Weight';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  hintText: 'Weight (only in KG)',
                  hintStyle: TextStyle(fontWeight: FontWeight.bold),
                  fillColor: Colors.white,
                ),
              ),
            ),



            Padding(
              padding: const EdgeInsets.fromLTRB(60, 10, 25, 10),
              //padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              child: TextFormField(
                onChanged: (value) {
                  expected_donation = value;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter expected donation';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  hintText: 'Expected donation',
                  hintStyle: TextStyle(fontWeight: FontWeight.bold),
                  fillColor: Colors.white,
                ),
              ),
            ),



            Padding(
              padding: const EdgeInsets.fromLTRB(60, 10, 25, 10),
              //padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              child: TextFormField(
                onChanged: (value) {
                  nearest_hospital = value;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter nearest hospital';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  hintText: 'Hospital',
                  hintStyle: TextStyle(fontWeight: FontWeight.bold),
                  fillColor: Colors.white,
                ),
              ),
            ),



            SizedBox(
              height: 10,
            ),
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 60,
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 14, left: 10),
                    child: Text("Blood Group",
                        style: TextStyle(fontSize: 15.0, color: Colors.black)),
                  ),
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white),
                ),
                SizedBox(
                  width: 10,
                ),
                DropdownButton<String>(
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue1 = newValue!;
                      blood_group = dropdownValue1;
                    });
                  },
                  value: dropdownValue1,
                  //hint: Text("Blood Group" ,  style: TextStyle(fontSize: 20.0 , color: Colors.white )),
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.white,
                    size: 40,
                  ),
                  dropdownColor: Color(0xFF179797),
                  items: items1.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),



            Padding(
              padding: const EdgeInsets.fromLTRB(60, 10, 25, 10),
              //padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
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
                  hintText: 'E-mail',
                  hintStyle: TextStyle(fontWeight: FontWeight.bold),
                  fillColor: Colors.white,
                ),
              ),
            ),



            Padding(
              padding: const EdgeInsets.fromLTRB(60, 10, 25, 10),
              //padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              child: TextFormField(
                onChanged: (value) {
                  phone_number = value;
                },
                validator: (value) {
                  if (value!.isEmpty ||
                      value.length != 10 ||
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
                  hintText: 'Contact number',
                  hintStyle: TextStyle(fontWeight: FontWeight.bold),
                  fillColor: Colors.white,
                ),
              ),
            ),



            Padding(
              padding: const EdgeInsets.fromLTRB(60, 10, 25, 10),
              //padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              child: TextFormField(
                onChanged: (value) {
                  subordinate_contact = value;
                },
                validator: (value) {
                  if (value!.isEmpty ||
                      value.length != 10 ||
                      !RegExp(r'^[0-9]+$').hasMatch(value!)) {
                    return 'Please Enter a correct Contact Number';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  hintText: 'Subordinate Contact number',
                  hintStyle: TextStyle(fontWeight: FontWeight.bold),
                  fillColor: Colors.white,
                ),
              ),
            ),



            Padding(
              padding: const EdgeInsets.fromLTRB(60, 10, 25, 10),
              //padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              child: TextFormField(
                onChanged: (value) {
                  password = value;
                },
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter password';
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


            Padding(
              padding: const EdgeInsets.fromLTRB(250, 5, 5, 5),
              //padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 300),
              child: OutlinedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      //side: BorderSide(color: Colors.white,width: 3.0),
                      side: BorderSide(color: Colors.red, width: 5),
                    ),
                  ),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    registerDonor();
                    Navigator.push(context, MaterialPageRoute(builder: (_) => const SignInHospital()));
                  }
                },
                child: const Text(
                  'Submit',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                //child:OutlinedButton(onPressed: onPressed, child: const Text('Outlined')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(300, 25, 5, 5),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  // children: [Icon(
                  //   Icons.help,
                  //   color: Colors.white,
                  //   size: 30,
                  //   //onPressed:(){},
                  // ),]
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.help,
                        size: 30,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (builder) {
                          return Help();
                        }));
                      },
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
