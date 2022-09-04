// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:catloaf/pages/addTodo_page.dart';
import 'package:catloaf/widgets/nav_box.dart';
import 'package:flutter/material.dart';

import '../widgets/todo.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade50,
        leading: Container(
          padding: const EdgeInsets.all(10),
          width: 20,
          height: 20,
          child: Image(
            image: AssetImage('images/cat.png'),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(Icons.search, color: Colors.grey),
          ),
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(Icons.notifications_outlined, color: Colors.grey),
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
                  child: Text(
                    'What\'s up, Nathapon',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'CATEGORY',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    NavBox(name: 'Active', amount: 10, col: Colors.blue),
                    SizedBox(
                      width: 10,
                    ),
                    NavBox(name: 'Overdue', amount: 20, col: Colors.black54),
                  ],
                ),
                SizedBox(height: 10),
              ],
            ),
            Text(
              'Your active\'s tasks',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            Flexible(
              child: ListView.builder(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Todo(todoIndex: index.toString());
                },
              ),
            ),
          ],
        ),

        //* list view
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => AddTodoPage()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
