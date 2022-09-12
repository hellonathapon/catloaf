import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../models/todo_model.dart';

part 'todos_state.dart';

class TodosCubit extends Cubit<TodosState> {
  TodosCubit() : super(InitialTodos());
}
