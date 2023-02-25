import 'package:flutter/material.dart';
import 'package:healthspace_test1/settings_screens/help.dart';
import 'package:healthspace_test1/settings_screens/help/help_center.dart';
import 'package:healthspace_test1/sign_in_screens/sign_in_hospital.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SignUp_Patient_Screen_4 extends StatefulWidget {
  const SignUp_Patient_Screen_4({Key? key}) : super(key: key);

  @override
  State<SignUp_Patient_Screen_4> createState() =>
      _SignUp_Patient_Screen_4State();
}

class _SignUp_Patient_Screen_4State extends State<SignUp_Patient_Screen_4> {
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
            "Patient Sign Up",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Color(0xFF179797),
            ),
          ),
        ),
        // Container(
        //   width: 300,
        //   height: 50,
        //   color: Colors.white,
        //   child: LinearPercentIndicator(
        //     animation: true,
        //     animationDuration: 2000,
        //     animateFromLastPercent: true,
        //     barRadius: Radius.circular(15),
        //     lineHeight: 20,
        //     percent: 0.75,
        //     progressColor: Color.fromRGBO(67, 177, 177, 1),
        //     backgroundColor: Color(0xFF179797),
        //     curve: Curves.bounceIn,
        //     center: Text('Progress 75%' ,  style: TextStyle(fontSize: 15.0 , color: Colors.white ,)),
        //   ),
        // ),
        Container(
          height: 700,
          color: Color(0xFF179797),
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: MyCustomForm(),
          ),
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

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
              child: Text('Confirmation',
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
            percent: 0.75,
            progressColor: Color.fromRGBO(67, 177, 177, 1),
            backgroundColor: Colors.white,
            curve: Curves.bounceIn,
            //center: Text('Progress 0%' ,  style: TextStyle(fontSize: 15.0 , color: Colors.white ,)),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(60, 10, 25, 10),
            //padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
            child: TextFormField(
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
            padding: const EdgeInsets.fromLTRB(60, 10, 25, 10),
            //padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
            child: TextFormField(
              obscureText: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter password again';
                }
                return null;
              },
              decoration: const InputDecoration(
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                // focusedBorder: OutlineInputBorder(
                //   borderSide: BorderSide(color: Colors.white),
                //   borderRadius: BorderRadius.circular(10),
                // ),
                // enabledBorder: UnderlineInputBorder(
                //   borderRadius: BorderRadius.circular(10),
                // ),
                hintText: 'Confirm Password',
                hintStyle: TextStyle(fontWeight: FontWeight.bold),
                fillColor: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(290, 5, 5, 5),
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const SignInHospital()));
                }
                // Validate returns true if the form is valid, or false otherwise.
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
    );
  }
}
