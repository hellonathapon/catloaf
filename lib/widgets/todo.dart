// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Todo extends StatelessWidget {
  const Todo({Key? key, required this.todoIndex}) : super(key: key);

  final String todoIndex;

  void doNothing(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: UniqueKey(),
      endActionPane: ActionPane(
        motion: ScrollMotion(),
        extentRatio: 0.2,
        children: [
          SlidableAction(
            onPressed: doNothing,
            backgroundColor: Colors.white,
            foregroundColor: Color.fromARGB(255, 200, 0, 0),
            icon: Icons.delete,
          ),
        ],
      ),
      child: Card(
        elevation: 0,
        child: ExpansionTile(
          leading: Icon(Icons.check_circle_outline),
          expandedCrossAxisAlignment: CrossAxisAlignment.start,
          title: Text(
            'Todo today something tomorrow',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text("Created at 11/09/2022"),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                  "try to add an ExpansionTile inside a Card, this will expand the Card when you expand the ExpansionTile"),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text("Due Date 20/09/2022"),
            ),
          ],
        ),
      ),
    );
  }
}
