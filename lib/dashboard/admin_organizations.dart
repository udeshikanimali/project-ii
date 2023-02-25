import 'package:flutter/material.dart';
import 'package:healthspace_test1/dashboard/admin_remove_account.dart';
import 'package:healthspace_test1/dashboard/admin_send_notification.dart';
import 'package:healthspace_test1/dashboard/org_verify.dart';


class AdminOrganizations extends StatelessWidget {
  const AdminOrganizations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    width: screenwidth,
                    height: screenheight*.3,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(26, 163, 163, 1),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(250),
                            bottomLeft: Radius.circular(250)
                        )
                    ),
                  ),
                  Container(
                    width: screenwidth,
                    height: screenheight*1,
                    color: Color(0xFF179797),
                  )
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 80),
                      child: Center(
                        child: Image(image: AssetImage('assets/logo1.jpg'), width: 100 , height: 100,),
                      ),
                    ),
                    SizedBox(height: 65.0,),
                    Text('healthspace' , style: TextStyle(fontSize: 30.0 , color: Colors.white), textAlign: TextAlign.center ,),
                    SizedBox(height: 10.0,),
                    Text('Organizations', style: TextStyle(fontSize: 15.0 , color: Colors.white), textAlign: TextAlign.center),
                    SizedBox(height: 10.0,),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          //SizedBox(height: 30,),
                          Text('Total Organizations ' , style: TextStyle(fontSize: 15.0 , color: Colors.white), textAlign: TextAlign.center ,),
                          Container(
                            child: Center(child: Text('50' , style: TextStyle(fontSize: 20.0 , color: Colors.white), textAlign: TextAlign.center)),
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromRGBO(67, 177, 177, 1),
                                border: Border.all(color: Colors.white)
                            ),
                          ),
                          Center(
                            child: TextButton(onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (builder){
                                return AdminRemoveAccount();
                              }));
                            },
                                child: Container(
                                    width: 150,
                                    height: 30,
                                    decoration: BoxDecoration(border: Border.all(color: Colors.white) , borderRadius: BorderRadius.all(Radius.circular(10))),
                                    child: Center(child: Text("Remove Account" , style: TextStyle(color: Colors.white),)))),
                          ),
                          Center(
                            child: TextButton(onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (builder){
                                return AdminSendNotification();
                              }));
                            },
                                child: Container(
                                    width: 150,
                                    height: 30,
                                    decoration: BoxDecoration(border: Border.all(color: Colors.white) , borderRadius: BorderRadius.all(Radius.circular(10))),
                                    child: Center(child: Text("Send Notofication" , style: TextStyle(color: Colors.white),)))),
                          ),
                          Center(
                            child: TextButton(onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (builder){
                                return OrgVerify();
                              }));
                            },
                                child: Container(
                                    width: 150,
                                    height: 30,
                                    decoration: BoxDecoration(border: Border.all(color: Colors.white) , borderRadius: BorderRadius.all(Radius.circular(10))),
                                    child: Center(child: Text("Verify Account" , style: TextStyle(color: Colors.white),)))),
                          )
                        ],
                      ),
                      width: screenwidth*.7,
                      height: screenheight*.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromRGBO(67, 177, 177, 1),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
      backgroundColor: Color(0xFF179797),
    );
  }
}
