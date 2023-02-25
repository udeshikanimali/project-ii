import 'package:flutter/material.dart';
import 'package:healthspace_test1/settings_screens/help.dart';
import 'package:readmore/readmore.dart';


class HelpCenter extends StatelessWidget{
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
      body: DefaultTextStyle.merge(
        style: const TextStyle(
          fontSize: 16.0,
          //fontFamily: 'monospace',
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Text(
                "How to Request Organs",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.redAccent),
              ),
              Padding(
                key: Key('showMore'),
                padding: EdgeInsets.all(16.0),
                child: ReadMoreText(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Purus in massa tempor nec feugiat. Aliquam ut porttitor leo a diam sollicitudin tempor. Dolor sit amet consectetur adipiscing elit ut. Tortor vitae purus faucibus ornare suspendisse sed. Ac feugiat sed lectus vestibulum mattis ullamcorper velit sed ullamcorper. In arcu cursus euismod quis viverra nibh cras pulvinar mattis. Dolor sit amet consectetur adipiscing elit pellentesque habitant. Fringilla est ullamcorper eget nulla. Nisi vitae suscipit tellus mauris a diam. Auctor augue mauris augue neque gravida in fermentum et. Magna etiam tempor orci eu. Tellus rutrum tellus pellentesque eu tincidunt. Amet porttitor eget dolor morbi non arcu risus. Aliquet eget sit amet tellus cras adipiscing. Rhoncus urna neque viverra justo. Duis tristique sollicitudin nibh sit amet commodo nulla facilisi. Semper quis lectus nulla at volutpat diam ut.',
                  trimLines: 3,
                  style: TextStyle(color: Colors.black),
                  colorClickableText: Colors.blue,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: '...Show more',
                  trimExpandedText: ' show less',
                ),
              ),
              Divider(
                color: Color(0xFF263238),
              ),
              Text(
                "How to Donate Organs and Equipments",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.redAccent),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: ReadMoreText(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Erat velit scelerisque in dictum non consectetur a erat. Euismod elementum nisi quis eleifend quam adipiscing. Quam quisque id diam vel quam elementum pulvinar etiam. Gravida quis blandit turpis cursus in hac. Fringilla ut morbi tincidunt augue interdum velit euismod in. Id donec ultrices tincidunt arcu non sodales neque sodales ut. Orci ac auctor augue mauris augue neque. Eget aliquet nibh praesent tristique. Iaculis eu non diam phasellus vestibulum lorem sed risus ultricies. Diam donec adipiscing tristique risus nec. Consequat ac felis donec et odio. Magna eget est lorem ipsum dolor sit. Ridiculus mus mauris vitae ultricies leo integer. At volutpat diam ut venenatis tellus in. Tempor orci dapibus ultrices in iaculis nunc sed augue. Gravida arcu ac tortor dignissim convallis aenean et tortor. Semper risus in hendrerit gravida rutrum quisque. Nisi quis eleifend quam adipiscing vitae proin.',
                  trimLines: 3,
                  style: TextStyle(color: Colors.black),
                  colorClickableText: Colors.blue,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: '...Show more',
                  trimExpandedText: 'show less ',
                ),
              ),
              Divider(
                color: Color(0xFF263238),
              ),
              Text(
                "How to Deactivate Account",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.redAccent),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: ReadMoreText(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Erat velit scelerisque in dictum non consectetur a erat. Euismod elementum nisi quis eleifend quam adipiscing. Quam quisque id diam vel quam elementum pulvinar etiam. Gravida quis blandit turpis cursus in hac. Fringilla ut morbi tincidunt augue interdum velit euismod in. Id donec ultrices tincidunt arcu non sodales neque sodales ut. Orci ac auctor augue mauris augue neque. Eget aliquet nibh praesent tristique. Iaculis eu non diam phasellus vestibulum lorem sed risus ultricies. Diam donec adipiscing tristique risus nec. Consequat ac felis donec et odio. Magna eget est lorem ipsum dolor sit. Ridiculus mus mauris vitae ultricies leo integer. At volutpat diam ut venenatis tellus in. Tempor orci dapibus ultrices in iaculis nunc sed augue. Gravida arcu ac tortor dignissim convallis aenean et tortor. Semper risus in hendrerit gravida rutrum quisque. Nisi quis eleifend quam adipiscing vitae proin.',
                  trimLines: 3,
                  style: TextStyle(color: Colors.black),
                  colorClickableText: Colors.blue,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: '...Show more',
                  trimExpandedText: ' show less',
                ),
              ),
              Divider(
                color: Color(0xFF263238),
              ),
              Text(
                "How to Delete Account",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.redAccent),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: ReadMoreText(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Erat velit scelerisque in dictum non consectetur a erat. Euismod elementum nisi quis eleifend quam adipiscing. Quam quisque id diam vel quam elementum pulvinar etiam. Gravida quis blandit turpis cursus in hac. Fringilla ut morbi tincidunt augue interdum velit euismod in. Id donec ultrices tincidunt arcu non sodales neque sodales ut. Orci ac auctor augue mauris augue neque. Eget aliquet nibh praesent tristique. Iaculis eu non diam phasellus vestibulum lorem sed risus ultricies. Diam donec adipiscing tristique risus nec. Consequat ac felis donec et odio. Magna eget est lorem ipsum dolor sit. Ridiculus mus mauris vitae ultricies leo integer. At volutpat diam ut venenatis tellus in. Tempor orci dapibus ultrices in iaculis nunc sed augue. Gravida arcu ac tortor dignissim convallis aenean et tortor. Semper risus in hendrerit gravida rutrum quisque. Nisi quis eleifend quam adipiscing vitae proin.',
                  trimLines: 3,
                  style: TextStyle(color: Colors.black),
                  colorClickableText: Colors.blue,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: '...Show more',
                  trimExpandedText: ' show less',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}