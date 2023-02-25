import 'package:flutter/material.dart';
import 'package:healthspace_test1/settings_screens/account_settings.dart';
//import 'package:healthspace_test1/settings_screens/account_settings.dart';
//import 'package:healthspace_settings/screens/account_settings.dart';


class SwitchAccount extends StatefulWidget {
  const SwitchAccount({Key? key}) : super(key: key);

  @override
  State<SwitchAccount> createState() => _SwitchAccountState();
}

class _SwitchAccountState extends State<SwitchAccount> {
  int _value = 1;
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
              return AccountSettings();
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
          Text('Settings > Account Settings > Delete Account', style: TextStyle(fontSize: 15.0 , color: Colors.white), textAlign: TextAlign.center),
          SizedBox(height: 10.0,),
          Padding(
            padding: const EdgeInsets.only(left: 30 , right: 30 , top: 30),
            child: Text('Switch To:' , style: TextStyle(fontSize: 15.0 , color: Colors.white) , textAlign: TextAlign.left,),
          ),
          SizedBox(height: 10.0,),
          // Column(
          //   children: [
          //     ListTile(
          //       title: Text('Donor'),
          //       leading: Radio(
          //         value: 1,
          //         groupValue: 1,
          //         onChanged: (value){},
          //       ),
          //     )
          //   ],
          // ),
          Padding(
            padding: const EdgeInsets.only(left: 120),
            child: Row(
              children: [
                Radio(value: 1,
                    groupValue: _value,
                    onChanged: (value){
                  setState(() {
                    _value = 1;
                  });
                    }),
                SizedBox(width: 10,),
                Text("Donor" , style: TextStyle(fontSize: 20.0 , color: Colors.white), textAlign: TextAlign.center ,)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 120),
            child: Row(
              children: [
                Radio(value: 2,
                    groupValue: _value,
                    onChanged: (value){
                      setState(() {
                        _value = 2;
                      });
                    }),
                SizedBox(width: 10,),
                Text("Patient" , style: TextStyle(fontSize: 20.0 , color: Colors.white), textAlign: TextAlign.center ,)
              ],
            ),
          ),
          SizedBox(height: 30.0,),
          Text('Fogot Password?' , style: TextStyle(fontSize: 15.0 , color: Colors.white ), textAlign: TextAlign.center ,),
          Padding(
            padding: const EdgeInsets.only(left: 230 , top: 30),
            child: TextButton(onPressed: (){},
                child: Container(
                    width: 70,
                    height: 30,
                    decoration: BoxDecoration(border: Border.all(color: Colors.white) , borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Center(child: Text("Switch" , style: TextStyle(color: Colors.white),)))),
          )
        ],
      ),
      backgroundColor: Color(0xFF179797),
    );
  }
}
