import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:healthspace_test1/dashboard/admin_dashboard.dart';
import 'package:healthspace_test1/feed/feed.dart';
import 'package:healthspace_test1/settings_screens/help/help_center.dart';
import 'package:healthspace_test1/settings_screens/password_security/fogot_password.dart';
import 'package:healthspace_test1/sign_in_screens/sign_in_admin.dart';
import 'package:http/http.dart' as http;
import 'package:healthspace_test1/start_screen/registeras.dart';

// import 'signup.dart';
import 'signup_admin.dart';

//import 'package:http/http.dart' as http;

class SignInDonor extends StatefulWidget {
  const SignInDonor({Key? key}) : super(key: key);

  @override
  _SignInDonorState createState() => _SignInDonorState();
}

class _SignInDonorState extends State<SignInDonor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xFF179797),
      body: ListView(children: <Widget>[
        Container(
          height: 300,
          color: Colors.white,
          child: Image.asset(
            "assets/signin.jpg",
            height: 60,
            width: 60,
          ),
        ),
        Container(
          height: 50,
          color: Colors.white,
          padding: const EdgeInsets.only(left: 15),
          child: const Text(
            "Sign In",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Color(0xFF179797),
            ),
          ),
        ),
        Container(
          height: 800,
          color: const Color(0xFF179797),
          child: const MyCustomForm(),
        ),
      ]),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  // saving form after validation
  void _SignInDonor() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
  }

  var email = '';
  var password = '';

  signInDonor() async {
    var response = await http.post(
      Uri.parse(
          'https://healthspace-production.up.railway.app/healthspace/option/login_donor'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        "email": email,
        "password": password,
      }),
    );

    if (response.statusCode == 200) {
      print('Success' + response.body.toString());
      Navigator.push(context, MaterialPageRoute(builder: (_) => const Feed()));
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
            padding: const EdgeInsets.fromLTRB(60, 70, 25, 20),
            //padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
            child: TextFormField(
              // controller: TextEditingController(text: user.email),
              // onChanged: (value) {
              //   user.email = value;
              // },
              onChanged: (value) {
                email = value;
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your e-mail';
                } else if (RegExp(
                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                    .hasMatch(value)) {
                  return null;
                } else {
                  return "Enter valid email";
                }
              },
              decoration: const InputDecoration(
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                hintText: 'E-mail address',
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
          // TextButton(
          //   style: ButtonStyle(alignment: Alignment.center),
          //   onPressed: (){},
          //   child: Text(
          //     'Forgot Password',style: TextStyle(color: Colors.white, fontSize: 15),),
          // ),
          // Padding(
          //   padding: const EdgeInsets.fromLTRB(250, 5, 5, 5),
          //   child:FlatButton(
          //     onPressed: (){},
          //     child: Text(
          //       'Forgot Password',
          //       style: TextStyle(color: Colors.blue, fontSize: 15),
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
            //color: Colors.blue, borderRadius: BorderRadius.circular(20)),
            //child: const Text('Submit',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                  style: const ButtonStyle(alignment: Alignment.center),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (builder) {
                      return FogotPassword();
                    }));
                  },
                  child: const Text(
                    'Forgot Password',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white,
                        decorationThickness: 2,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 15),
                  ),
                ),
                OutlinedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        //side: BorderSide(color: Colors.white,width: 3.0),
                        side: const BorderSide(color: Colors.red, width: 5),
                      ),
                    ),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      signInDonor();
                      // Navigator.push(context, MaterialPageRoute(builder: (_) => const SignIn()));
                    }
                  },
                  child: const Text(
                    'Sign In',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
            //color: Colors.blue, borderRadius: BorderRadius.circular(20)),
            //child: const Text('Submit',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Not a member?",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                TextButton(
                  style: const ButtonStyle(alignment: Alignment.center),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return RegisterAs();
                    }));
                    // if (_formKey.currentState!.validate()) {
                    //   Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //           builder: (_) => const RegisterAs()));
                    // }
                  },
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white,
                        decorationThickness: 1,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                ),
                // OutlinedButton(
                //   style: ButtonStyle(
                //     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                //       RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(18.0),
                //         //side: BorderSide(color: Colors.white,width: 3.0),
                //         side: BorderSide(color: Colors.red, width: 5),
                //       ),
                //     ),
                //   ),
                //   onPressed: () {
                //     Navigator.push(
                //         context, MaterialPageRoute(builder: (_) => SignUp()));
                //   },
                //   child: Text(
                //     'Sign In',
                //     style: TextStyle(color: Colors.white, fontSize: 25),
                //   ),
                // ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
            //color: Colors.blue, borderRadius: BorderRadius.circular(20)),
            //child: const Text('Submit',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Sign In as an admin.",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                TextButton(
                  style: const ButtonStyle(alignment: Alignment.center),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const SignInAdmin()));
                  },
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return SignInAdmin();
                      }));
                    },
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white,
                          decorationThickness: 1,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20),
                    ),
                  ),
                ),
                // OutlinedButton(
                //   style: ButtonStyle(
                //     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                //       RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(18.0),
                //         //side: BorderSide(color: Colors.white,width: 3.0),
                //         side: BorderSide(color: Colors.red, width: 5),
                //       ),
                //     ),
                //   ),
                //   onPressed: () {
                //     Navigator.push(
                //         context, MaterialPageRoute(builder: (_) => SignUp()));
                //   },
                //   child: Text(
                //     'Sign In',
                //     style: TextStyle(color: Colors.white, fontSize: 25),
                //   ),
                // ),
              ],
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => HelpCenter()));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
