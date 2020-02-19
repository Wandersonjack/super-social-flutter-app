import 'package:flutter/material.dart';
import 'package:super_socialize_flutter/screens/home_screen.dart';
import 'package:super_socialize_flutter/screens/login_screen.dart';
import 'package:super_socialize_flutter/utilities/colors.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        accentColor: kAccentColor,
      ),
      home: LoginScreen(),
    );
  }
}
