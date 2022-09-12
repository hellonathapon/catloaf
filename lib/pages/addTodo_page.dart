// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class AddTodoPage extends StatefulWidget {
  const AddTodoPage({Key? key}) : super(key: key);

  @override
  State<AddTodoPage> createState() => _AddTodoPageState();
}

class _AddTodoPageState extends State<AddTodoPage> {
  DateTime? _dateTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade50,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.close,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                style: TextStyle(fontSize: 25, height: 1.5),
                decoration: InputDecoration(
                  labelText: 'Enter new task',
                  border: InputBorder.none,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: FloatingActionButton.extended(
                    onPressed: () {
                      //* Date picker

                      showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2021),
                        lastDate: DateTime(2023),
                      ).then((pickedDate) {
                        setState(() {
                          _dateTime = pickedDate;
                        });
                      });
                    },
                    backgroundColor: Colors.grey.shade50,
                    icon: Icon(
                      Icons.calendar_month_rounded,
                      size: 24.0,
                      color: Colors.grey,
                    ),
                    label: Text(
                      _dateTime == null
                          ? 'Tomorrow'
                          : "${_dateTime?.day}/${_dateTime?.month}/${_dateTime?.year}",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    elevation: 0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pop(context);
        },
        label: Text(
          'New task',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        icon: Icon(
          Icons.arrow_back_ios,
          size: 24.0,
          color: Colors.white,
        ),
        elevation: 0,
      ),
    );
  }
}
