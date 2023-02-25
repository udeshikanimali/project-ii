import 'package:flutter/material.dart';
import 'package:healthspace_test1/dashboard/admin_donor.dart';
import 'package:healthspace_test1/dashboard/admin_hospitals.dart';
import 'package:healthspace_test1/dashboard/admin_organizations.dart';
import 'package:healthspace_test1/dashboard/admin_patients.dart';
import 'package:healthspace_test1/dashboard/admin_send_notification.dart';
import 'package:healthspace_test1/dashboard/organ_request.dart';
import 'package:healthspace_test1/dashboard/switch_request.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({Key? key}) : super(key: key);

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
                  // Padding(
                  //   padding: const EdgeInsets.only(top: 80),
                  //   child: Center(
                  //     child: Image(image: AssetImage('assets/logo1.jpg'), width: 100 , height: 100,),
                  //   ),
                  // ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 80),
                      child: Center(
                        child: Image(image: AssetImage('assets/logo1.jpg'), height: 100, width: 100,),
                      ),
                    ),
                    SizedBox(height: 65.0,),
                    Text('healthspace' , style: TextStyle(fontSize: 30.0 , color: Colors.white), textAlign: TextAlign.center ,),
                    SizedBox(height: 10.0,),
                    Text('Admin Dashboard', style: TextStyle(fontSize: 15.0 , color: Colors.white), textAlign: TextAlign.center),
                    SizedBox(height: 10.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextButton(
                          onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (builder){
                              return AdminDonor();
                            }));
                          },
                          child: Container(
                            child: Column(
                              children: [
                                SizedBox(height: 30,),
                                Container(
                                  child: Center(child:
                                  Text('100' , style: TextStyle(fontSize: 20.0 , color: Colors.white), textAlign: TextAlign.center)),
                                  width: 70,
                                  height: 70,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color.fromRGBO(67, 177, 177, 1),
                                      border: Border.all(color: Colors.white)
                                  ),
                                ),
                                SizedBox(height: 20,),
                                Text('Total Donors' , style: TextStyle(fontSize: 15.0 , color: Colors.white), textAlign: TextAlign.center)
                              ],
                            ),
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                              color: Color.fromRGBO(67, 177, 177, 1),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (builder){
                              return AdminPatients();
                            }));
                          },
                          child: Container(
                            child: Column(
                              children: [
                                SizedBox(height: 30,),
                                Container(
                                  child: Center(child:
                                  Text('200' , style: TextStyle(fontSize: 20.0 , color: Colors.white), textAlign: TextAlign.center)),
                                  width: 70,
                                  height: 70,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color.fromRGBO(67, 177, 177, 1),
                                      border: Border.all(color: Colors.white)
                                  ),
                                ),
                                SizedBox(height: 20,),
                                Text('Total Patients' , style: TextStyle(fontSize: 15.0 , color: Colors.white), textAlign: TextAlign.center)
                              ],
                            ),
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                color: Color.fromRGBO(67, 177, 177, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextButton(
                          onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (builder){
                              return AdminOrganizations();
                            }));
                          },
                          child: Container(
                            child: Column(
                              children: [
                                SizedBox(height: 30,),
                                Container(
                                  child: Center(child:
                                  Center(child: Text('50' , style: TextStyle(fontSize: 20.0 , color: Colors.white), textAlign: TextAlign.center))),
                                  width: 70,
                                  height: 70,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color.fromRGBO(67, 177, 177, 1),
                                      border: Border.all(color: Colors.white)
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text('Total \n  Organizations' , style: TextStyle(fontSize: 15.0 , color: Colors.white), textAlign: TextAlign.center)
                              ],
                            ),
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                color: Color.fromRGBO(67, 177, 177, 1),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (builder){
                              return AdminHospitals();
                            }));
                          },
                          child: Container(
                            child: Column(
                              children: [
                                SizedBox(height: 30,),
                                Container(
                                  child: Center(child:
                                  Text('70' , style: TextStyle(fontSize: 20.0 , color: Colors.white), textAlign: TextAlign.center)),
                                  width: 70,
                                  height: 70,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color.fromRGBO(67, 177, 177, 1),
                                      border: Border.all(color: Colors.white)
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text('Total \n  Hospitals' , style: TextStyle(fontSize: 15.0 , color: Colors.white), textAlign: TextAlign.center)
                              ],
                            ),
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                color: Color.fromRGBO(67, 177, 177, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextButton(
                          onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (builder){
                              return SwitchRequest();
                            }));
                          },
                          child: Container(
                            child: Column(
                              children: [
                                SizedBox(height: 30,),
                                Container(
                                  child: Icon(Icons.compare_arrows_rounded , color: Colors.white , size: 50,),
                                ),
                                SizedBox(height: 20,),
                                Text('Switch Request' , style: TextStyle(fontSize: 15.0 , color: Colors.white), textAlign: TextAlign.center)
                              ],
                            ),
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                color: Color.fromRGBO(67, 177, 177, 1),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (builder){
                              return AdminSendNotification();
                            }));
                          },
                          child: Container(
                            child: Column(
                              children: [
                                SizedBox(height: 30,),
                                Container(
                                  child: Icon(Icons.send , color: Colors.white , size: 50,),
                                ),
                                SizedBox(height: 10,),
                                Text('Send \n Notifications' , style: TextStyle(fontSize: 15.0 , color: Colors.white), textAlign: TextAlign.center)
                              ],
                            ),
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                color: Color.fromRGBO(67, 177, 177, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30,),
                    TextButton(
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (builder){
                          return AdminOrgReq();
                        }));
                      },
                      child: Container(
                        child: Column(
                          children: [
                            SizedBox(height: 30,),
                            Container(
                              child: Icon(Icons.request_quote_outlined , color: Colors.white , size: 50,),
                            ),
                            SizedBox(height: 10,),
                            Text('Organ Requests' , style: TextStyle(fontSize: 15.0 , color: Colors.white), textAlign: TextAlign.center)
                          ],
                        ),
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          color: Color.fromRGBO(67, 177, 177, 1),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
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
