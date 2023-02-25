import 'package:flutter/material.dart';
import 'package:healthspace_test1/settings_screens/password_settings.dart';
// import 'package:healthspace_settings/screens/account_settings.dart';
// import 'package:healthspace_settings/screens/password_settings.dart';


class FogotPassword extends StatelessWidget {
  const FogotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1AA3A3),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (builder){
              return PasswordSettings();
            }));
          },
        ),
      ),
      body: ListView(
        children: [
          Image(image: ExactAssetImage('assets/top.jpg')),
          SizedBox(height: 10.0,),
          Text('healthspace' , style: TextStyle(fontSize: 30.0 , color: Colors.white), textAlign: TextAlign.center ,),
          SizedBox(height: 10.0,),
          Text('Settings > Password & Security > Fogot Password', style: TextStyle(fontSize: 15.0 , color: Colors.white), textAlign: TextAlign.center),
          SizedBox(height: 10.0,),
          Padding(
            padding: const EdgeInsets.only(left: 30 , right: 30 , top: 30),
            child: Text('Enter E-mail:' , style: TextStyle(fontSize: 15.0 , color: Colors.white) , textAlign: TextAlign.left,),
          ),
          SizedBox(height: 10.0,),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                color: Color.fromARGB(100, 26, 163, 163),
              ),
              child: TextFormField( decoration: InputDecoration(border: UnderlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)))),
                validator: (text){
                  if(text!.isEmpty){
                    return 'Enter Password';
                  }
                  return null;
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30 , right: 30 , top: 30),
            child: Text('Enter New Password:' , style: TextStyle(fontSize: 15.0 , color: Colors.white) , textAlign: TextAlign.left,),
          ),
          SizedBox(height: 10.0,),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                color: Color.fromARGB(100, 26, 163, 163),
              ),
              child: TextFormField( decoration: InputDecoration(border: UnderlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)))),
                validator: (text){
                  if(text!.isEmpty){
                    return 'Enter Password';
                  }
                  return null;
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30 , right: 30 , top: 30),
            child: Text('Confirm New Password:' , style: TextStyle(fontSize: 15.0 , color: Colors.white) , textAlign: TextAlign.left,),
          ),
          SizedBox(height: 10.0,),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                color: Color.fromARGB(100, 26, 163, 163),
              ),
              child: TextFormField( decoration: InputDecoration(border: UnderlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)))),
                validator: (text){
                  if(text!.isEmpty){
                    return 'Enter Password';
                  }
                  return null;
                },
              ),
            ),
          ),
          SizedBox(height: 30.0,),
          //Text('Fogot Password?' , style: TextStyle(fontSize: 15.0 , color: Colors.white ), textAlign: TextAlign.center ,),
          Padding(
            padding: const EdgeInsets.only(left: 230 , top: 30),
            child: TextButton(onPressed: (){},
                child: Container(
                    width: 80,
                    height: 30,
                    decoration: BoxDecoration(border: Border.all(color: Colors.white) , borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(child: Text("Change" , style: TextStyle(color: Colors.white),)))),
          )
        ],
      ),
      backgroundColor: Color(0xFF179797),
    );
  }
}
