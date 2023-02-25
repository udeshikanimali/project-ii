import 'package:flutter/material.dart';
import 'package:healthspace_test1/settings_screens/account_settings/deactive_account.dart';
import 'package:healthspace_test1/settings_screens/account_settings/delete_account.dart';
import 'package:healthspace_test1/settings_screens/account_settings/swith_account.dart';

import 'package:healthspace_test1/sign_in_screens/sign_up_donor.dart';

import 'package:healthspace_test1/start_screen/get_started.dart';

import '../start_screen/registeras.dart';
import 'sign_up_patient_screen_1.dart';

//import 'package:healthspace_settings/screens/settings.dart';

class Havedesies extends StatelessWidget {
  const Havedesies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1AA3A3),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (builder) {
              return RegisterAs();
            }));
          },
        ),
      ),
      body: ListView(
        children: [
          Image(image: ExactAssetImage('assets/top.jpg')),
          SizedBox(
            height: 10.0,
          ),
          Text(
            'Have you\nany\nDiseases?',
            style: TextStyle(
                fontSize: 30.0,
                color: Colors.white,
                decoration: TextDecoration.underline),
            textAlign: TextAlign.center,
          ),
          // SizedBox(height: 10.0,),
          // Text('Settings > Account Settings', style: TextStyle(fontSize: 15.0 , color: Colors.white), textAlign: TextAlign.center),
          SizedBox(
            height: 10.0,
          ),



          TextButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return SignUp_Patient();
              }));
            },
            child: Container(
              child: Text(
                'Yes',
                style: TextStyle(fontSize: 30.0, color: Colors.white),
                textAlign: TextAlign.center,
              ),
              width: 200.0,
              height: 50.0,
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                color: Color.fromARGB(100, 26, 163, 163),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),


          
          TextButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return Sign_Up_Donor();
              }));
            },
            child: Container(
              child: Text(
                'No',
                style: TextStyle(fontSize: 30.0, color: Colors.white),
                textAlign: TextAlign.center,
              ),
              width: 200.0,
              height: 50.0,
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                color: Color.fromARGB(100, 26, 163, 163),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xFF179797),
    );
  }
}
