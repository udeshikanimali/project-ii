import 'package:flutter/material.dart';
import 'package:healthspace_test1/Screens/HomeScreen.dart';
import 'package:healthspace_test1/feed/create_post.dart';
import 'package:healthspace_test1/settings_screens/settings.dart';
import 'package:healthspace_test1/sign_in_screens/organrequest_form.dart';
import 'package:healthspace_test1/start_screen/get_started.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Georgina Rodriguez'),
            accountEmail: Text('grg@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://oflutter.com/wp-content/uploads/2021/02/girl-profile.png',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg')),
            ),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Followers'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Followings'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.chat_bubble),
            title: Text('Chat'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (builder) {
                return Homescreen();
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.restore_page),
            title: Text('Organ Request Form'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return OrganRequest_Form();
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.post_add),
            title: Text('Post Something'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return CreatePost();
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.request_quote_outlined),
            title: Text('Request'),
            onTap: () => null,
            trailing: ClipOval(
              child: Container(
                color: Colors.red,
                width: 20,
                height: 20,
                child: Center(
                  child: Text(
                    '8',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (builder) {
                return Settings();
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.description),
            title: Text('Policies'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            title: Text('Exit'),
            leading: Icon(Icons.exit_to_app),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return GetStarted();
              }));
            },
          ),
        ],
      ),
    );
  }
}
