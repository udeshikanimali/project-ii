import 'package:flutter/material.dart';
import 'package:healthspace_test1/feed/feed.dart';

import '../sign_in_screens/sign_in_hospital.dart';
import 'account_settings.dart';
import 'edit_profile_settings.dart';
import 'help.dart';
import 'language_settings.dart';
import 'password_settings.dart';
// import 'package:healthspace_settings/screens/account_settings.dart';
// import 'package:healthspace_settings/screens/edit_profile_settings.dart';
// import 'package:healthspace_settings/screens/help.dart';
// import 'package:healthspace_settings/screens/language_settings.dart';
// import 'package:healthspace_settings/screens/password_settings.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1AA3A3),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return Feed();
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
            'healthspace',
            style: TextStyle(fontSize: 30.0, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10.0,
          ),
          Text('Settings',
              style: TextStyle(fontSize: 15.0, color: Colors.white),
              textAlign: TextAlign.center),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return AccountSettings();
                  }));
                },
                child: Container(
                    width: 160.0,
                    height: 50,
                    // color: Colors.pink,
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      color: Color.fromARGB(100, 26, 163, 163),
                    ),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 30.0,
                              height: 45.0,
                              color: Color.fromARGB(100, 26, 163, 163),
                              child: Icon(Icons.manage_accounts,
                                  color: Colors.white,
                                  shadows: [Shadow(color: Colors.black12)]),
                            ),
                            Container(
                              width: 110.0,
                              height: 45.0,
                              color: Color.fromARGB(100, 26, 163, 163),
                              child: Center(
                                  child: Text(
                                'Account Settings',
                                style: TextStyle(
                                    fontSize: 12.0, color: Colors.white),
                                textAlign: TextAlign.center,
                                softWrap: true,
                              )),
                            )
                          ],
                        )
                      ],
                    )),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return PasswordSettings();
                  }));
                },
                child: Container(
                    width: 160.0,
                    height: 50.0,
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      color: Color.fromARGB(100, 26, 163, 163),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                width: 30.0,
                                height: 45.0,
                                color: Color.fromARGB(100, 26, 163, 163),
                                child: Icon(Icons.security,
                                    color: Colors.white,
                                    shadows: [Shadow(color: Colors.black12)])),
                            Container(
                                width: 110.0,
                                height: 45.0,
                                color: Color.fromARGB(100, 26, 163, 163),
                                child: Center(
                                    child: Text('Password Settings',
                                        style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.white),
                                        textAlign: TextAlign.center))),
                          ],
                        ),
                      ],
                    )),
              )
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return LanguageSettings();
                  }));
                },
                child: Container(
                    width: 160.0,
                    height: 50,
                    // color: Colors.pink,
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      color: Color.fromARGB(100, 26, 163, 163),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Container(
                                width: 30.0,
                                height: 45.0,
                                color: Color.fromARGB(100, 26, 163, 163),
                                child: Icon(Icons.language,
                                    color: Colors.white,
                                    shadows: [Shadow(color: Colors.black12)])),
                            //Image(image: ExactAssetImage('assets/home.jpg'), height: 10 , alignment: Alignment.centerLeft ,),
                            Container(
                                width: 110.0,
                                height: 45.0,
                                color: Color.fromARGB(100, 26, 163, 163),
                                child: Center(
                                    child: Text('Language Settings',
                                        style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.white),
                                        textAlign: TextAlign.center))),
                          ],
                        ),
                      ],
                    )),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return EditProfile();
                  }));
                },
                child: Container(
                    width: 160.0,
                    height: 50,
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      color: Color.fromARGB(100, 26, 163, 163),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Container(
                                width: 30.0,
                                height: 45.0,
                                color: Color.fromARGB(100, 26, 163, 163),
                                child: Icon(Icons.personal_injury_sharp,
                                    color: Colors.white,
                                    shadows: [Shadow(color: Colors.black12)])),
                            //Image(image: ExactAssetImage('assets/home.jpg'), height: 10 , alignment: Alignment.centerLeft ,),
                            Container(
                                width: 110.0,
                                height: 45.0,
                                color: Color.fromARGB(100, 26, 163, 163),
                                child: Center(
                                    child: Text('Edit Profile',
                                        style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.white),
                                        textAlign: TextAlign.start))),
                          ],
                        ),
                      ],
                    )),
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return Help();
              }));
            },
            child: Container(
                width: 160.0,
                height: 50,
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  color: Color.fromARGB(100, 26, 163, 163),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Container(
                            width: 30.0,
                            height: 45.0,
                            color: Color.fromARGB(100, 26, 163, 163),
                            child: Icon(Icons.help,
                                color: Colors.white,
                                shadows: [Shadow(color: Colors.black12)])),
                        Container(
                            width: 110.0,
                            height: 45.0,
                            color: Color.fromARGB(100, 26, 163, 163),
                            child: Center(
                                child: Text('Help',
                                    style: TextStyle(
                                        fontSize: 12.0, color: Colors.white),
                                    textAlign: TextAlign.center))),
                      ],
                    ),
                  ],
                )),
          )
        ],
      ),
      backgroundColor: Color(0xFF179797),
    );
  }
}
// Container(
//   width: 400.0,
//   height: 100.0,
//   color: Colors.pink,
//   // child: ClipRect(
//   //   child: Image(
//   //     fit: BoxFit.contain,
//   //     alignment: Alignment.center,
//   //     image: ExactAssetImage('assets/elipse1.jpg'),
//   //   ),
//   // ),
// )