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
          // leading: Icon(
          //   Icons.check_circle_outline,
          // ),
          expandedCrossAxisAlignment: CrossAxisAlignment.start,
          tilePadding: EdgeInsets.symmetric(
              horizontal: 10), //* OVERRIDES DEFAULT PADDING
          backgroundColor: Colors.grey.shade100,
          title: Row(
            children: [
              Icon(
                Icons.check_circle_outline,
              ),
              SizedBox(width: 10),
              Flexible(
                child: Text(
                  'Todo today something tomo',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Icon(Icons.calendar_month_rounded, color: Colors.grey),
                  SizedBox(width: 5),
                  Text(
                    "Created at 11/09/2022",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                  "try to add an ExpansionTile inside a Card, this will expand the Card when you expand the ExpansionTile"),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Icon(Icons.notifications_outlined, color: Colors.grey),
                  SizedBox(width: 5),
                  Text(
                    "Due Date 20/09/2022",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
