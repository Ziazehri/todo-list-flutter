// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todoapp/addTodo.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

// void addTextToTodo ()
// {

// }
// String todoText = 'something';

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Text(
          'hi this ',
        ),
      ),
      appBar: AppBar(
        title: Text("Todo App"),
        centerTitle: true,
        actions: [
          InkWell(
            enableFeedback: true,
            borderRadius: BorderRadius.circular(40),
            splashColor: Colors.amberAccent,
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    height: 200,

                    padding: EdgeInsets.all(20),
                    color: Colors.amber,
                    child: AddTodo(),
                    // decoration: BoxDecoration(),
                  );
                },
              );
            },
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.add,
                // color: Colors.green,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        child: Text('todoText'),
      ),
    );
  }
}
