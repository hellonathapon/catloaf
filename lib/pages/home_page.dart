// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:catloaf/pages/addTodo_page.dart';
import 'package:catloaf/widgets/category_card.dart';
import 'package:flutter/material.dart';
import 'package:catloaf/colors.dart' as color;

import '../widgets/todo.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String cardSelect = "Active";

  void _changeTab(String cardName) {
    setState(() {
      cardSelect = cardName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
            SizedBox(
              height: 20,
            ),
            Text(
              'What\'s up, Nathapon',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
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

            //* horizontal List View Tab cards
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  CategoryCard(
                    onTap: () {
                      _changeTab("Active");
                    },
                    name: 'Active',
                    amount: 10,
                    gradiant1: color.AppColor.gradTeal1,
                    gradiant2: color.AppColor.gradTeal2,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CategoryCard(
                    onTap: () {
                      _changeTab("Overdue");
                    },
                    gradiant1: color.AppColor.gradBlue1,
                    gradiant2: color.AppColor.gradBlue2,
                    name: 'Overdue',
                    amount: 20,
                  ),
                ],
              ),
            ),
            Text(
              'Your active\'s tasks',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 10),
            Flexible(
              child: ListView.builder(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  if (cardSelect == "Active") {
                    return Todo(todoIndex: index.toString());
                  } else {
                    return Text("Hello world");
                  }
                },
              ),
            ),
          ],
        ),
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
