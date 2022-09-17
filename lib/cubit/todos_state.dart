part of 'todos_cubits.dart';

abstract class TodosState extends Equatable {
  const TodosState();

  @override
  List<Object> get props => [];
}

class InitialTodos extends TodosState {
  //* it has to be the very first state of the App
  @override
  List<Object> get props => [];
}

class Welcome extends TodosState {
  //* this state meant to be register new user specifically.
  //* this state is invoked when there is no such a user in Sharedpreference.
  @override
  List<Object> get props => [];
}

class LoadingTodos extends TodosState {
  //* dealing with SharedPreferences typically get Future
  @override
  List<Object> get props => [];
}

class LoadedTodos extends TodosState {
  //* user ? new user : load user
  const LoadedTodos(this.user);

  final User user;
  @override
  List<Object> get props => [user];
}
