import 'package:catloaf/models/todo_model.dart';

class User {
  User({required this.uid, required this.username, required this.todos});

  //* fetch User from SharedPref to store in Bloc
  User.fromJson(Map<String, dynamic> json) {
    uid = json["uid"];
    username = json["username"];
    todos = List.from(json["todos"]);
  }

  late String uid;
  late String username;
  // late DateTime regDate;
  late List<Todo?> todos;

  Map<String, dynamic> toJson() {
    return {'uid': uid, 'username': username, 'todos': todos};
  }
}
