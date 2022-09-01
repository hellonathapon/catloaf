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
        height: 80,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name),
            Text(amount.toString()),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: col,
        ),
      ),
    );
  }
}
