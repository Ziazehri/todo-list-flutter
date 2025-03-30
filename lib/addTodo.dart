// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AddTodo extends StatefulWidget {
  const AddTodo({super.key});

  @override
  State<AddTodo> createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {
  
  TextEditingController todoText = TextEditingController();
  // late void Function() afuntion;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('type todo'),
        TextField(
          // style: TextStyle(),
          controller: todoText,
          autocorrect: false,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(5),
            labelText: 'here\'s a lebel',
            hintText: 'User Name ',
            icon: Icon(Icons.flutter_dash),
          ),
        ),
        ElevatedButton(
            onPressed: () {
              todoText.text;
              // todoText.text = '';
            },
            child: Text('Add'))
      ],
    );
  }
}
