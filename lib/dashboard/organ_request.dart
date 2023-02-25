import 'package:flutter/material.dart';
import 'package:healthspace_test1/dashboard/org_req_con.dart';
import 'package:healthspace_test1/dashboard/org_req_pen.dart';

class AdminOrgReq extends StatelessWidget {
  const AdminOrgReq({Key? key}) : super(key: key);

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
                        child: Image(image: AssetImage('assets/logo1.jpg'), height: 100, width: 100,),
                      ),
                    ),
                    SizedBox(height: 65.0,),
                    Text('healthspace' , style: TextStyle(fontSize: 30.0 , color: Colors.white), textAlign: TextAlign.center ,),
                    SizedBox(height: 10.0,),
                    Text('Admin Dashboard>Organ \n Requests', style: TextStyle(fontSize: 15.0 , color: Colors.white), textAlign: TextAlign.center),
                    SizedBox(height: 10.0,),
                    TextButton(
                      onPressed: (){},
                      child: TextButton(
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (builder){
                            return OrganReqCon();
                          }));
                        },
                        child: Container(
                          child: Center(
                              child: Text('Pending Requests' , style: TextStyle(fontSize: 20.0 , color: Colors.white), textAlign: TextAlign.center ,)),
                          width: screenwidth*.7,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15.0)),
                            color: Color.fromRGBO(67, 177, 177, 1),
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (builder){
                          return OrganReqPen();
                        }));
                      },
                      child: Container(
                        child: Center(
                            child: Text('Confirmed Requests' , style: TextStyle(fontSize: 20.0 , color: Colors.white), textAlign: TextAlign.center ,)),
                        width: screenwidth*.7,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          color: Color.fromRGBO(67, 177, 177, 1),
                        ),
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
