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
          backgroundColor: Color(0xFF395379),
          title: Text('ToDo'),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                IconData(57424, fontFamily: 'MaterialIcons'),
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  showTask = true;
                });
                print(showTask);
              },
            )
          ],
        ),
        body: new SingleChildScrollView(
          child: Column(
            children: <Widget>[
              showTask == true
                  ? new AlertDialog(
                      title: new Text(
                        "Add New Task",
                        style: TextStyle(color: Colors.black54),
                      ),
                      content: Column(
                        children: <Widget>[
                          TextFormField(
                            cursorColor: Theme.of(context).cursorColor,
                            maxLength: 4,
                            decoration: InputDecoration(
                              labelText: 'Task Number',
                              labelStyle: TextStyle(
                                fontSize: 15,
                                color: Color(0xFF115CA3),
                              ),
                              suffixIcon: Icon(
                                Icons.check_circle,
                                size: 20,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFF115CA3)),
                              ),
                            ),
                          ),
                          TextFormField(
                            cursorColor: Theme.of(context).cursorColor,
                            maxLength: 50,
                            decoration: InputDecoration(
                              labelText: 'Description',
                              labelStyle: TextStyle(
                                fontSize: 15,
                                color: Color(0xFF115CA3),
                              ),
                              suffixIcon: Icon(
                                Icons.check_circle,
                                size: 20,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFF115CA3)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      actions: <Widget>[
                        new FlatButton(
                            color: Colors.green,
                            onPressed: () {
                              setState(() {
                                showTask = false;
                                eCtrl.clear();
                              });
                            },
                            child: new Text("Save"))
                      ],
                    )
                  : new Text("")
            ],
          ),
        ),
      ),
    );
  }
}
