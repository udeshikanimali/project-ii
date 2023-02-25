import 'package:flutter/material.dart';
import 'package:healthspace_test1/feed/create_post.dart';
import 'package:healthspace_test1/sign_in_screens/profile.dart';

class Feed extends StatelessWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Donation App",
      theme: ThemeData(fontFamily: "Open Sans"),
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFF1AA3A3),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('assets/logo.jpg', fit: BoxFit.contain,
                height: 32,
                ),
                Container(
                  padding: const EdgeInsets.all(8.0), child: const Text("HealthSpace", style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold ),
                ),
                ),
              ],
            ), //,),
            actions: <Widget>[
              IconButton(icon: const Icon(Icons.search), onPressed: () {}),
            ],
            bottom: const TabBar(
              tabs: <Widget>[
                Tab(icon: Icon(Icons.menu)),
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.notifications)),
                Tab(icon: Icon(Icons.message)),
                Tab(icon: Icon(Icons.settings)),
              ],
            ),
          ),
          body:ListView.builder(
            itemCount: 12,
            itemBuilder: (context,index)=>const CardItem(),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (builder){
                return CreatePost();
              }));
            },
            child: const Icon(Icons.edit, color: Colors.black,),
          ),
        ),
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  const CardItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 350.0,
        // color: Colors.red,
        child: TextButton(
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (builder){
              return ProfilePage();
            }));
          },
          child: Column(
            children: <Widget>[
              const ListTile(
                leading: CircleAvatar( radius: 30.0,
                    backgroundImage:NetworkImage('https://as1.ftcdn.net/v2/jpg/05/03/99/96/1000_F_503999607_FsUlTvXPdr8BN7G2RelyIUsdPS78HyvZ.jpg'),
                    backgroundColor: Colors.transparent
                ),
                trailing: Icon(Icons.man_outlined),
                title: Text("Nipunika Basnayake"),
                subtitle: Text("Tue Jan 01 2023 12:50:14"),
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://media.istockphoto.com/id/1256555401/vector/blood-donation-concept.jpg?s=612x612&w=is&k=20&c=4LE-zMOs26Llm-q8nIr2dO53s_CtsOoCTS3uw0CL2Ig="),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 14.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: const <Widget>[
                      Icon(Icons.thumb_up, color: Colors.black),
                      SizedBox(width: 8.0),
                      Text(
                        "Like",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  Row(
                    children: const <Widget>[
                      Icon(Icons.comment,  color: Colors.black,),
                      SizedBox(width: 8.0),
                      Text(
                        "Comments",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  Row(
                    children: const <Widget>[
                      Icon(Icons.message_outlined,  color: Colors.black,),
                      SizedBox(width: 8.0),
                      Text(
                        "Message",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 12.0),
            ],
          ),
        ),
      ),
    );
  }
}