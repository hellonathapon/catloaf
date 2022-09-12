part of 'todos_cubit.dart';

abstract class TodosState extends Equatable {
  const TodosState();

  @override
  List<Object> get props => [];
}

class InitialTodos extends TodosState {
  @override
  List<Object> get props => [];
}

class Welcome extends TodosState {
  @override
  List<Object> get props => [];
}

class LoadingTodos extends TodosState {
  @override
  List<Object> get props => [];
}

class LoadedTodos extends TodosState {
  //* constructor
  const LoadedTodos(this.todos);

  final List<Todo> todos;
  @override
  List<Object> get props => [todos];
}
