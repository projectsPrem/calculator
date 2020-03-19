import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import'./Home.dart';

void main()=>{runApp(MyApp())};


class MyApp extends StatefulWidget{
  @override
  MyAppState createState()=> MyAppState();
}

class MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme:ThemeData.dark(

      ),

      darkTheme: ThemeData(
        primaryColor: Colors.deepPurpleAccent,
            accentColor: Colors.deepPurpleAccent
      ),

      home: HomePage(),

    );
  }

}