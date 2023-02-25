import 'package:flutter/material.dart';
import 'package:healthspace_test1/dashboard/admin_dashboard.dart';
import 'package:healthspace_test1/sign_in_screens/have_dieses.dart';

import 'package:healthspace_test1/sign_in_screens/signup_hospital.dart';
import 'package:healthspace_test1/sign_in_screens/signup_organization.dart';

import '../sign_in_screens/sign_up_patient_screen_1.dart';

class RegisterAs extends StatefulWidget {
  const RegisterAs({Key? key}) : super(key: key);

  @override
  State<RegisterAs> createState() => _RegisterAsState();
}

class _RegisterAsState extends State<RegisterAs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF179797),
      body: ListView(
        children: <Widget>[
          Container(
            color: const Color(0xFF179797),
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/logo1.jpg",
                  height: 120,
                  width: 120,
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            color: const Color(0xff179797),
            padding: const EdgeInsets.only(left: 15),
            child: const Text(
              "Register As",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),


          Container(
            height: 100,
            width: 0,
            color: const Color(0xFF179797),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 20,
                child: ElevatedButton(
                  style: ButtonStyle(
                 
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: const BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const Havedesies())); 
                  },
                  child: const Text(
                    'Donor',
                    style: TextStyle(color: Color(0xFF179797), fontSize: 30),
                  ),
                ),
              ),
            ),
          ),



          Container(
            height: 100,
            width: 0,
            color: const Color(0xFF179797),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 20,
                child: ElevatedButton(
                  style: ButtonStyle(                    
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: const BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) =>
                                const SignUp_Patient())); 
                  },
                  child: const Text(
                    'Patient',
                    style: TextStyle(color: Color(0xFF179797), fontSize: 30),
                  ),
                ),
              ),
            ),
          ),



          Container(
            height: 100,
            width: 0,
            color: const Color(0xFF179797),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 20,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: const BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const SignUp_Hospital()));
                  },
                  child: const Text(
                    'Hospital',
                    style: TextStyle(color: Color(0xFF179797), fontSize: 30),
                  ),
                ),
              ),
            ),
          ),


          Container(
            height: 100,
            width: 0,
            color: const Color(0xFF179797),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 20,
                child: ElevatedButton(
                  style: ButtonStyle(              
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: const BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const SignUp_Organization()));
                  },
                  child: const Text(
                    'Organization',
                    style: TextStyle(color: Color(0xFF179797), fontSize: 30),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
