import 'package:flutter/material.dart';
import 'package:oracle_digital_app/src/mogule/sign_in/page/view/sign_in_page.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          //   primarySwatch: Colors.blue,
          ),
      home: SignInPage(),
    );
  }
}
