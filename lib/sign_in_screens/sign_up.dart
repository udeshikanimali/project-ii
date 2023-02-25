import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title:Text("Sign Up",textAlign:TextAlign.left,
      //     style: TextStyle(fontSize: 30,color: Colors.greenAccent,
      //     ),
      //   ),
      //   toolbarHeight: 150.0,
      //backgroundColor: Colors.white,
      //
      // ),

      // body: Container(
      //   // color: Colors.greenAccent,
      //   // height:double.infinity,
      //   // width: double.infinity,
      //   //child:Text("Flutter"),
      // ),
      body: ListView(

        //backgroundColor:Colors.green;
          children:<Widget>[
            Container(
              height: 150,
              color: Colors.white,
              // decoration: BoxDecoration(
              //   image: DecorationImage(
              //     image: AssetImage("assets/logo.jpg"),
              //     fit: BoxFit.fill,
              //   ),

              child: Image.asset(
                "assets/logo.jpg",
                height:50,
                width:50,
                //fit:BoxFit.fill
              ),
            ),



            Container(
              height: 50,
              color: Colors.white,
              // child: Align(
              //   alignment: Alignment.bottomLeft,
              //   child:Text("Sign Up",style: TextStyle(fontSize: 30,color: Colors.greenAccent,),),
              // ),
              padding: const EdgeInsets.only(left: 15),
              child:const Text("Sign Up",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Color(0xFF179797),),),
            ),
            Container(
              height:1000,
              color: const Color(0xFF179797),
              //color: Color.fromARGB(0, 23, 151, 151),
              //color:Colors.greenAccent,
              child: const MyCustomForm(),
              //   // child:Padding(
              //   //   padding: const EdgeInsets.all(18.0),
              //   //   child: TextField(
              //   //     maxLength: 8,
              //   //   ),
              //   // ),
              //
            ),
          ]
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

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
                if (value == null || value.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
              decoration: const InputDecoration(
                filled:true,
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white,width:2.0,style:BorderStyle.solid),
                  borderRadius:BorderRadius.all(Radius.circular(30)),
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
                if (value == null || value.isEmpty) {
                  return 'Please enter your address';
                }
                return null;
              },
              decoration: const InputDecoration(
                filled:true,
                border: OutlineInputBorder(
                  borderRadius:BorderRadius.all(Radius.circular(30)),
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
                if (value == null || value.isEmpty) {
                  return 'Please enter your birthday';
                }
                return null;
              },
              decoration: const InputDecoration(
                filled:true,
                border: OutlineInputBorder(
                  borderRadius:BorderRadius.all(Radius.circular(30)),
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
                if (value == null || value.isEmpty) {
                  return 'Please enter NIC or Drivers license';
                }
                return null;
              },
              decoration: const InputDecoration(
                filled:true,
                border: OutlineInputBorder(
                  borderRadius:BorderRadius.all(Radius.circular(30)),
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
                  return 'Please enter your phone number';
                }
                return null;
              },
              decoration: const InputDecoration(
                filled:true,
                border: OutlineInputBorder(
                  borderRadius:BorderRadius.all(Radius.circular(30)),
                ),
                hintText: 'Phone number',
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
                  return 'Please enter your e-mail';
                }
                return null;
              },
              decoration: const InputDecoration(
                filled:true,
                border: OutlineInputBorder(
                  borderRadius:BorderRadius.all(Radius.circular(30)),
                ),
                hintText: 'E-mail',
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
                  return 'Please enter password';
                }
                return null;
              },
              decoration: const InputDecoration(
                filled:true,
                border: OutlineInputBorder(
                  borderRadius:BorderRadius.all(Radius.circular(30)),
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
                filled:true,
                border: OutlineInputBorder(
                  borderRadius:BorderRadius.all(Radius.circular(30)),
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
                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                }
              },
              child: const Text('Submit',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
              //child:OutlinedButton(onPressed: onPressed, child: const Text('Outlined')),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(300, 25, 5, 5),
            child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                // children: [Icon(
                //   Icons.help,
                //   color: Colors.white,
                //   size: 30,
                //   //onPressed:(){},
                // ),]
                children:[IconButton(
                  icon: Icon(Icons.help,size: 30,color: Colors.white,),
                  onPressed: (){},

                ),]
            ),
          ),

        ],
      ),
    );
  }
}