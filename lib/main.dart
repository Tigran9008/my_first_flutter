import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp(
    title: new Text("ToDooo"),
    someText: new Text("Some ...."),
  ));
}

class MyApp extends StatefulWidget {
  MyApp({required this.title, required this.someText});

  final Widget title, someText;

  @override
  MyAppState createState() => new MyAppState();
}

class MyAppState extends State<MyApp> {
  TextEditingController eCtrl = new TextEditingController();
  bool showTask = false;

  Widget build(BuildContext ctxt) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: Text('ToDo'),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                IconData(57424, fontFamily: 'MaterialIcons'),
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  if(!showTask){
                    showTask = true;
                  }else{
                    showTask = false;
                  }
                });
                print(showTask);
              },
            )
          ],
        ),
        body: new Column(
          children: <Widget>[
            showTask == true
                ? new AlertDialog(
                    title: new Text("Task 1"),
                  )
                : new Text("")
          ],
        ),
      ),
    );
  }
}
