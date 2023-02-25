import 'package:flutter/material.dart';
import 'package:healthspace_test1/settings_screens/help.dart';


class RequestSupport extends StatelessWidget {
  const RequestSupport({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1AA3A3),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (builder){
              return const Help();
            }));
          },
        ),
      ),
      body: ListView(
        children:  [
          Image(image: ExactAssetImage('assets/top.jpg')),
          SizedBox(height: 30.0,width: 20.0,),
          const Text('Contact Us' , style: TextStyle(fontSize: 30.0 , color: Colors.black, fontStyle: FontStyle.italic), textAlign: TextAlign.center ,),
          SizedBox(height: 20.0, width: 20.0,),
          TextButton(onPressed: (){},
            child: Container(
              width: 300.0,
              height: 50.0,
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                color: Color.fromARGB(100, 26, 163, 163),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      width: 80,
                      height: 45,
                      color: Color.fromARGB(100, 26, 163, 163),
                      child: Icon(Icons.email_outlined , color: Colors.white , shadows: [Shadow(color: Colors.black12)], size: 30,)
                  ),
                ]
              ),
            ),
          ),

          TextButton(onPressed: (){},
            child: Container(
              width: 300.0,
              height: 50.0,
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                color: Color.fromARGB(100, 26, 163, 163),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                  width: 80,
                  height: 45,
                  color: Color.fromARGB(100, 26, 163, 163),
                  child: Icon(Icons.phone , color: Colors.white , shadows: [Shadow(color: Colors.black12)], size: 30,)
              ),
                ],
              ),
            ),
          ),
        ]
      ),
    );
  }
}