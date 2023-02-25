import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:healthspace_test1/feed/feed.dart';
import 'package:healthspace_test1/settings_screens/account_settings/swith_account.dart';
import 'package:healthspace_test1/settings_screens/settings.dart';
import 'package:healthspace_test1/sign_in_screens/have_dieses.dart';
import 'package:healthspace_test1/sign_in_screens/profile.dart';
import 'package:healthspace_test1/sign_in_screens/sign_up_patient_screen_2.dart';
import 'package:healthspace_test1/sign_in_screens/sign_up_patient_screen_3.dart';
import 'package:healthspace_test1/sign_in_screens/sign_up_patient_screen_4.dart';

import 'package:healthspace_test1/start_screen/get_started.dart';
// import 'package:healthspace_settings/screens/edit_profile_settings.dart';
// import 'package:healthspace_settings/screens/help.dart';
// import 'screens/language_settings.dart';
// import 'screens/password_settings.dart';
// import 'screens/account_settings.dart';
//
// import 'screens/settings.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  get color => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: GetStarted(),
    );
  }
}
