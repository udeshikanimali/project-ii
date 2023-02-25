import 'package:flutter/material.dart';
import 'package:healthspace_test1/settings_screens/help.dart';
// import 'package:healthspace/screens/settings.dart';
// import 'package:healthspace/screens/help.dart';
import 'package:readmore/readmore.dart';
import 'package:another_stepper/another_stepper.dart';

class SecurityHelp extends StatefulWidget {
  const SecurityHelp({Key? key}) : super(key: key);

  @override
  State<SecurityHelp> createState() => _SecurityHelp();
}
class _SecurityHelp extends State<SecurityHelp> {
  List<StepperData> stepperData = [
    StepperData(
        title: StepperText("Open your Account."),
        subtitle: StepperText("You might need to sign in.",
          textStyle: const TextStyle(
            color: Colors.black54,
            fontSize: 12,
          ),
        ),
        iconWidget: Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: const Icon(Icons.looks_one, color: Colors.white),
        )),
    StepperData(
        title: StepperText("Go to Password Settings."),
        subtitle: StepperText("Under Security select Signing in to Account.",
          textStyle: const TextStyle(
            color: Colors.black54,
            fontSize: 12,
          ),
        ),
        iconWidget: Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: const Icon(Icons.looks_two, color: Colors.white),
        )),
    StepperData(
        title: StepperText("Click Change Passowrd."),
        subtitle: StepperText(
            "You will go to the new window that you can type your new password.",
          textStyle: const TextStyle(
            color: Colors.black54,
            fontSize: 12,
          ),
        ),
        iconWidget: Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: const Icon(Icons.looks_3, color: Colors.white),
        )),
    StepperData(
      title: StepperText("Enter New Passowrd."),
      subtitle: StepperText(
        "You can type your new password and confirm it.",
        textStyle: const TextStyle(
          color: Colors.black54,
          fontSize: 12,
        ),
      ),
      iconWidget: Container(
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.all(Radius.circular(30))),
      child: const Icon(Icons.looks_4, color: Colors.white),
    )),
  ];
  @override
  void initState() {
    super.initState();
  }

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
            children: <Widget>[
              const Text(
                "How to Change Password",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black45),
              ),
              const Padding(
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
              Padding(
                padding: EdgeInsets.only(top: 20, left: 20),
                child: AnotherStepper(
                  stepperList: stepperData,
                  stepperDirection: Axis.vertical,
                  activeBarColor: Colors.green,
                  iconWidth: 40,
                  iconHeight: 40,
                  activeIndex: 3,
                  barThickness: 8,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
