import 'package:flutter/material.dart';
import 'package:healthspace_test1/settings_screens/edit_profile_settings.dart';
//import 'package:healthspace/screens/edit_profile_settings.dart';


class ChangeNumber extends StatelessWidget {
  const ChangeNumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1AA3A3),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (builder){
              return const EditProfile();
            }));
          },
        ),
      ),
      body: ListView(
        children: [
          const Image(image: ExactAssetImage('assets/top.jpg')),
          const SizedBox(height: 10.0,),
          const Text('healthspace' , style: TextStyle(fontSize: 30.0 , color: Colors.white), textAlign: TextAlign.center ,),
          const SizedBox(height: 10.0,),
          const Text('Settings > Edit Profile > Change Contact Number', style: TextStyle(fontSize: 15.0 , color: Colors.white), textAlign: TextAlign.center),
          const SizedBox(height: 10.0,),
          const Padding(
            padding: EdgeInsets.only(left: 30 , right: 30 , top: 30),
            child: Text('New Number:' , style: TextStyle(fontSize: 15.0 , color: Colors.white) , textAlign: TextAlign.left,),
          ),
          const SizedBox(height: 10.0,),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                color: Color.fromARGB(100, 26, 163, 163),
              ),
              child: TextFormField( decoration: const InputDecoration(border: UnderlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)))),
                validator: (text){
                  if(text!.isEmpty){
                    return 'Enter New Number';
                  }
                  return null;
                },
              ),
            ),
          ),
          const SizedBox(height: 10.0,),
          //Text('Fogot Password?' , style: TextStyle(fontSize: 15.0 , color: Colors.white ), textAlign: TextAlign.center ,),
          Padding(
            padding: const EdgeInsets.only(left: 230 , top: 30),
            child: TextButton(onPressed: (){},
                child: Container(
                    width: 70,
                    height: 30,
                    decoration: BoxDecoration(border: Border.all(color: Colors.white) , borderRadius: const BorderRadius.all(Radius.circular(5))),
                    child: const Center(child: Text("Change" , style: TextStyle(color: Colors.white),)))),
          )
        ],
      ),
      backgroundColor: const Color(0xFF179797),
    );
  }
}
