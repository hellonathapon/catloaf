// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import '../colors.dart' as color;

class CategoryCard extends StatelessWidget {
  const CategoryCard(
      {Key? key,
      required this.name,
      required this.amount,
      required this.gradiant1,
      required this.gradiant2,
      required this.onTap})
      : super(key: key);

  final String name;
  final int amount;
  final Color gradiant1;
  final Color gradiant2;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Expanded(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.only(topRight: Radius.circular(18)),
                child: Image.asset(
                  'images/abstract1.png',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 15.0),
              height: 80,
              width: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${amount.toString()} tasks',
                        style: const TextStyle(color: Colors.white),
                      ),
                      Text(
                        name,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  // color: Colors.teal,
                  gradient: LinearGradient(
                    colors: [
                      gradiant1.withOpacity(0.8),
                      gradiant2.withOpacity(0.9),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
