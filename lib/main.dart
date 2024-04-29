import 'package:ejemplo_job/pages/menu.dart';
import 'package:flutter/material.dart';

void main() => runApp(const myApp());

class myApp extends StatelessWidget{
  const myApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Dashboard",
      theme: ThemeData(
        primaryColor: Colors.amber
      ),
      home: Menu(title: "Menu"),
    );
  }
}