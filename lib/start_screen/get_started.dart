import 'package:flutter/material.dart';
import 'package:healthspace_test1/settings_screens/help.dart';

import '../sign_in_screens/sign_in_hospital.dart';

import 'registeras.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF179797),
      appBar: AppBar(
        backgroundColor: Color(0xff1AA3A3),
        elevation: 0,
      ),
      body: ListView(children: <Widget>[
        
        Container(
          color: Color(0xFF179797),
          height: 600,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/top.jpg",
              ),
              Image.asset(
                "assets/getstarted.jpg",
                height: 500,
                width: 400,
              ),
            ],
          ),
        ),

        Container(
          height: 100,
          width: 0,
          color: Color(0xFF179797),
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
                      side: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => RegisterAs()));
                },
                child: Text(
                  'Get Started',
                  style: TextStyle(color: Color(0xFF179797), fontSize: 25),
                ),
              ),
            ),
          ),
        ),

        Container(
          height: 50,
          color: Color(0xFF179797),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Already a member?",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                TextButton(
                  style: ButtonStyle(alignment: Alignment.center),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => SignInHospital()));
                  },
                  child: Text(
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
              ],
            ),
          ),
        ),
        Container(
          color: Color(0xFF179797),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(300, 25, 5, 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.help,
                    size: 30,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Help()));
                  },
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
