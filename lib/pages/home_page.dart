// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:catloaf/widgets/nav_box.dart';
import 'package:flutter/material.dart';

import '../widgets/todo.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.catching_pokemon, color: Colors.grey),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(Icons.notifications, color: Colors.grey),
          ),
        ],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 12,
          right: 12,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Text('What is up, Nathapon',
                      style: TextStyle(fontSize: 30)),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Category'),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    NavBox(name: 'Active Todos', amount: 20, col: Colors.amber),
                    SizedBox(
                      width: 10,
                    ),
                    NavBox(name: 'Overdue Todos', amount: 20, col: Colors.teal),
                  ],
                ),
                SizedBox(height: 10),
              ],
            ),
            Text('Today\'s tasks'),
            Flexible(
              child: ListView.builder(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount: 25,
                itemBuilder: (BuildContext context, int index) {
                  return Todo();
                },
              ),
            ),
          ],
        ),

        //* list view
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
