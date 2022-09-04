// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class NavBox extends StatelessWidget {
  const NavBox(
      {Key? key, required this.name, required this.amount, required this.col})
      : super(key: key);

  final String name;
  final int amount;
  final Color col;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.only(left: 15.0),
        height: 80,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${amount.toString()} tasks'),
            Text(
              name,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: col,
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18.0),
          color: Colors.white,
        ),
      ),
    );
  }
}
