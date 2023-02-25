import 'package:flutter/material.dart';
import 'package:healthspace_test1/Screens/HomeScreen.dart';
import 'package:healthspace_test1/feed/create_post.dart';
import 'package:healthspace_test1/nav/NavBar.dart';
import 'package:healthspace_test1/settings_screens/settings.dart';
import 'package:widget_mask/widget_mask.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    int _currentIndex = 0;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF179797),
        title: Center(
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('assets/logo1.jpg', fit: BoxFit.contain,
                  height: 32,
                ),
                Container(
                  padding: const EdgeInsets.all(8.0), child: const Text("HealthSpace", style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold ),
                ),
                ),
              ],
            ),
          ),
        ),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return NavBar();
            }));
          },
        ),
        // actions: [
        //   IconButton(
        //     icon: Icon(Icons.settings,size: 30,color: Colors.white,),
        //     onPressed: (){
        //       //Navigator.of(context).push(MaterialPageRoute(builder: (context){
        //       //return Settings();
        //       //}));
        //     },
        //   ),
        // ],
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 30),
              WidgetMask(
                mask:  Image(image: ExactAssetImage('assets/jrg.jpg') , fit: BoxFit.contain, alignment: Alignment.center,),
                child: Container(
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    //color: Colors.pink,
                  ),
                ),
              ),
              SizedBox(height: 50),
              Text('Georgina Rodriguez' , style: TextStyle(fontSize: 30 , color: Colors.black), textAlign: TextAlign.center),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Center(child: Text('Followers' , style: TextStyle(fontSize: 20 , color: Colors.white), textAlign: TextAlign.center)),
                    width: 170,
                    height: 40,
                    //color: Colors.pink,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      color:Color(0xFF179797),
                    ),
                  ),
                  Container(
                    child: Center(child: Text('Followings' , style: TextStyle(fontSize: 20 , color: Colors.white), textAlign: TextAlign.center)),
                    width: 170,
                    height: 40,
                    //color: Colors.pink,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      color:Color(0xFF179797),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Image(image: ExactAssetImage('assets/jrg.jpg') , fit: BoxFit.fill,),
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.pink,
                            ),
                    ),
                    // WidgetMask(
                    //     mask:  Image(image: ExactAssetImage('assets/jrg.jpg')),
                    //     child: Container(
                    //       width: 50,
                    //       height: 50,
                    //       decoration: BoxDecoration(
                    //         shape: BoxShape.circle,
                    //         color: Colors.pink,
                    //       ),
                    //     ),
                    // ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 5, 5),
                      child: TextButton(
                        style: const ButtonStyle(alignment: Alignment.center),
                        onPressed: () {
                          Navigator.push(
                              context, MaterialPageRoute(builder: (_) => const CreatePost()));
                        },
                        child: const Text(
                          'Post Something',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.grey,
                              decorationThickness: 2,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                              fontSize: 15),
                        ),
                      ),
                    ),
                  ],
                ),
                width: 400,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  color:Colors.white,
                ),
              ),
              SizedBox(height: 290,),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return NavBar();
                      }));
                    },
                        icon: Icon(Icons.menu) , color: Colors.white,),
                    IconButton(onPressed: (){

                    },
                        icon: Icon(Icons.home) , color: Colors.white,),
                    IconButton(onPressed: (){},
                        icon: Icon(Icons.notifications) , color: Colors.white,),
                    IconButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (builder){
                        return Homescreen();
                      }));
                    },
                        icon: Icon(Icons.chat) , color: Colors.white,),
                    IconButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (builder){
                        return Settings();
                      }));
                    },
                        icon: Icon(Icons.settings) , color: Colors.white,),
                  ],
                ),
                width: screenwidth,
                height: 50,
                color: Color(0xFF179797),
              )
              // BottomNavigationBar(items: [
              //   BottomNavigationBarItem(
              //       icon: Icon(Icons.menu),label: 'menu' , backgroundColor: Color(0xFF179797),),
              //   BottomNavigationBarItem(
              //       icon: Icon(Icons.home),label: 'home' , backgroundColor: Color(0xFF179797),),
              //   BottomNavigationBarItem(
              //       icon: Icon(Icons.notifications),label: 'notifications' , backgroundColor: Color(0xFF179797),),
              //   BottomNavigationBarItem(
              //       icon: Icon(Icons.message),label: 'chsts' , backgroundColor: Color(0xFF179797),),
              //   BottomNavigationBarItem(
              //       icon: Icon(Icons.settings),label: 'settings', backgroundColor: Color(0xFF179797),),
              // ] ,

            ],
          )
        ],
      ),
    );
  }
}
