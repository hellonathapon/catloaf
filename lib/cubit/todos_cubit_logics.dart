import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../pages/home_page.dart';
import '../pages/welcome_page.dart';
import 'todos_cubits.dart';

class TodosCubitLogics extends StatefulWidget {
  const TodosCubitLogics({Key? key}) : super(key: key);

  @override
  State<TodosCubitLogics> createState() => _TodosCubitLogicsState();
}

class _TodosCubitLogicsState extends State<TodosCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocBuilder<TodosCubit, TodosState>(
      builder: (context, state) {
        if (state is Welcome) {
          return WelcomePage();
        }
        if (state is LoadedTodos) {
          return const HomePage();
        }
        if (state is LoadingTodos) {
          return const Center(child: CircularProgressIndicator(),);
        } else {
          return Container();
        }
      },
    ));
  }
}
