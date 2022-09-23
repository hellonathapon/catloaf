// ignore_for_file: prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:catloaf/models/user_model.dart';
import 'package:catloaf/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/todos_cubits.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  TextEditingController controllerName = TextEditingController();
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<TodosCubit, TodosState>(
        builder: (context, state) {
          return SafeArea(
            child: Stack(
              children: [
                Positioned(
                  width: MediaQuery.of(context).size.width,
                  top: 50,
                  child: Container(
                    child: Image.asset('images/welcome1.png', scale: 2.5),
                  ),
                ),

                //* Poaitioned Widget always needs width prop to function
                Positioned(
                  top: 350,
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            "CATLOAF TODO",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 25),
                        // TextField(
                        //     decoration: InputDecoration(
                        //         labelText: "What should i call you")),
                        Text("What should i call you"),
                        SizedBox(height: 10),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: TextField(
                            controller: controllerName,
                            style: TextStyle(
                              fontSize: 16,
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Your name",
                              contentPadding: EdgeInsets.only(
                                  left: 18.0, right: 18, top: 10, bottom: 10),
                            ),
                          ),
                        ),
                        SizedBox(height: 18),
                        Row(
                          children: [
                            Checkbox(
                              value: isChecked,
                              onChanged: (bool? val) {
                                setState(() {
                                  isChecked = val!;
                                });
                              },
                            ),
                            Flexible(
                              child: Text(
                                  "Catloaf still in the stage of Beta. if you enjoy using it consider support this project buy me a Coffee"),
                            ),
                          ],
                        ),

                        SizedBox(height: 10),

                        ElevatedButton(
                          onPressed: () {
                            if (controllerName.value.text.length == 0) {
                              return;
                            } else {
                              //* invoke event to save the new user credentials
                              var newUser = User(
                                uid: DateTime.now().toString(),
                                username: controllerName.value.text,
                                // regDate: DateTime.now(),
                                todos: [],
                              );
                              context
                                  .read<TodosCubit>()
                                  .registerNewUser(newUser);
                            }
                          },
                          child: Text('REGISTER'),
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size.fromHeight(
                                  50), // height 50 and width infinite
                              shape: StadiumBorder()),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
