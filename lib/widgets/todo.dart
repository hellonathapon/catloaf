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
      // startActionPane: ActionPane(
      //   // A motion is a widget used to control how the pane animates.
      //   motion: const ScrollMotion(),
      //   extentRatio: 0.2,

      //   // A pane can dismiss the Slidable.
      //   dismissible: DismissiblePane(onDismissed: () {}),

      //   // All actions are defined in the children parameter.
      //   children: [
      //     // A SlidableAction can have an icon and/or a label.
      //     SlidableAction(
      //       onPressed: doNothing,
      //       backgroundColor: Color(0xFFFE4A49),
      //       foregroundColor: Colors.white,
      //       icon: Icons.delete,
      //     ),
      //   ],
      // ),
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
        child: Padding(
          padding:
              const EdgeInsets.only(top: 20, bottom: 20, left: 8, right: 8),
          child: Row(
            children: [
              Icon(Icons.check_circle_outline_rounded, color: Colors.blue),
              SizedBox(width: 7),
              Text(
                'Todo today something tomorrow',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
