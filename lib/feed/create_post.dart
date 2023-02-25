import 'package:flutter/material.dart';

class CreatePost extends StatefulWidget {
  const CreatePost({Key? key}) : super(key: key);

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Color(0xFF179797),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            'Create Post',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              //padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter text...';
                  }
                  return null;
                },
                maxLines: 5,
                minLines: 1,
                decoration: const InputDecoration(
                  //contentPadding: EdgeInsets.symmetric(vertical: 40),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  labelText: 'Type a titles',
                  //labelTextColor: Color(0xFF179797),
                  hintText: 'Type something...',
                  hintStyle: TextStyle(fontWeight: FontWeight.bold),
                  fillColor: Colors.white,
                ),
              ),
            ),
            //photo
          ],
        ),
      ),
    );
  }
}
