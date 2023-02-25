import 'package:flutter/material.dart';
import 'package:healthspace_test1/settings_screens/help.dart';
import 'package:healthspace_test1/settings_screens/help/help_center.dart';
import 'package:healthspace_test1/sign_in_screens/legacyuser_form.dart';
import 'package:healthspace_test1/sign_in_screens/sign_in_hospital.dart';
import 'package:healthspace_test1/sign_in_screens/sign_up_donor_screen_2.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

List<String> items = ["Male", "Female"];
String dropdownValue = "Male";

class SignUp_Donor extends StatefulWidget {
  const SignUp_Donor({Key? key}) : super(key: key);

  @override
  State<SignUp_Donor> createState() => _SignUp_DonorState();
}

class _SignUp_DonorState extends State<SignUp_Donor> {
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
  // Future save() async {
  //   var res = await http.post('http://localhost:8080/signup',
  //       headers: <String, String>{
  //         'Context-Type': 'application/json;charSet=UTF-8'
  //       },
  //       body: <String, String>{
  //         'email': user.email,
  //         'password': user.password
  //       });
  //   print(res.body);
  // }
  // Future<http.Response> uploadVideo(
  //     {required String uploadURL, required String filePath}) async {
  //   var res = await http.put(
  //     Uri.parse(uploadURL),
  //     headers: {'content-type': 'application/json'},
  //     body: <String, String>{
  //         'email': user.email,
  //         'password': user.password
  //       });
  //   print(res.body);
  //     }

  //User user = User('', '','','','','','');
  @override
  Widget build(BuildContext context) {
    return Form(
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
          // Padding(
          //   padding: const EdgeInsets.fromLTRB(60, 25, 25, 10),
          //   //padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          //   child: TextField(
          //     // validator: (value) {
          //     //   if (value == null || value.isEmpty) {
          //     //     return 'Please enter some text';
          //     //   }
          //     //   return null;
          //     // },
          //     decoration: InputDecoration(
          //       //disabledBorder:InputBorder.none,
          //
          //       filled:true,
          //       border: OutlineInputBorder(
          //         borderRadius:BorderRadius.all(Radius.circular(30)),
          //         borderSide: BorderSide(color: Colors.white)
          //       ),
          //       hintText: 'Name',
          //       hintStyle: TextStyle(fontWeight: FontWeight.bold),
          //       fillColor: Colors.white,
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.fromLTRB(60, 30, 25, 10),
            //padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
            child: TextFormField(
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
              validator: (value) {
                if (value!.isEmpty ||
                    value.length < 9 ||
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
            //padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
            child: TextFormField(
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
              validator: (value) {
                if (value!.isEmpty ||
                    value.length < 10 ||
                    !RegExp(r'^[0-9]+$').hasMatch(value!)) {
                  return 'Please enter your birthday(DD/MM/YYYY)';
                }
                return null;
              },
              decoration: const InputDecoration(
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                hintText: 'Birthday',
                hintStyle: TextStyle(fontWeight: FontWeight.bold),
                fillColor: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(60, 10, 25, 10),
            //padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
            child: TextFormField(
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const SignUp_Donor_Screen_2()));
                }
                // Validate returns true if the form is valid, or false otherwise.
              },
              child: const Text(
                'Next',
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
