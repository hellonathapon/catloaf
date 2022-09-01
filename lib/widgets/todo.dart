// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Todo extends StatelessWidget {
  const Todo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Text('Todo today something tomorrow'),
      ),
    );
  }
}
