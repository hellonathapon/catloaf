import 'package:catloaf/models/todo_model.dart';

class User {
  User(
      {required this.uid,
      required this.username,
      required this.regDate,
      required this.todos});

  final int uid;
  final String username;
  final DateTime regDate;
  List<Todo> todos;
}
