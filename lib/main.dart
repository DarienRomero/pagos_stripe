import 'package:flutter/material.dart';
import 'package:pagos_stripe/src/home_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        primaryColor: Color(0xff282879),
        scaffoldBackgroundColor: Color(0xfff212232A),
      ),
      home: HomePage()
    );
  }
}