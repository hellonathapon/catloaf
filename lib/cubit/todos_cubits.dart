import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/todo_model.dart';
import '../models/user_model.dart';

part 'todos_state.dart';

class TodosCubit extends Cubit<TodosState> {
  TodosCubit({required this.prefs}) : super(InitialTodos()) {
    //* check if user exist in the device before
    //* --> user ? load user : create new user
    //* --> user ? LoadingState : WelcomeState
  }
  final SharedPreferences prefs;

  void registerNewUser(User user) {
    //* save user in shared_preferences
    emit(LoadedTodos(user));
  }
}
