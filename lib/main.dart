import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';

void main(){
  runApp(const MaterialApp(
    home:MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: HomePage(),
    );
  }
}
