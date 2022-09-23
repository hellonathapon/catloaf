import 'package:catloaf/cubit/todos_cubit_logics.dart';
import 'package:catloaf/cubit/todos_cubits.dart';
import 'package:catloaf/pages/home_page.dart';
import 'package:catloaf/pages/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import './palette.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // primaryColor: const Color(0XFFFB7D81),
        primarySwatch: Palette.catloaf,
      ).copyWith(dividerColor: Colors.transparent),
      home: BlocProvider<TodosCubit>(
        
        create: ((context) {
          Future<SharedPreferences> pref = SharedPreferences.getInstance();
          return TodosCubit(pref);
        }),
        child: const TodosCubitLogics(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
