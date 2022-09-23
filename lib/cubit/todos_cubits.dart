import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

import '../models/user_model.dart';

part 'todos_state.dart';

class TodosCubit extends Cubit<TodosState> {
  TodosCubit(this.prefInstance) : super(InitialTodos()) {
    // when app is run --> cubit --> InitialTodos State --> this block
    prefInstance.then((user) {
      if (user.getString('catloaf') == null) {
        emit(Welcome());
      } else {
        parseJson();
      }
    });
  }

  final Future<SharedPreferences> prefInstance;

  void registerNewUser(User user) async {
    emit(LoadingTodos());

    try {
      //* encode Map to Json and persist the data in Shared Preferences
      var pref = await prefInstance;
      var convertableMap = user.toJson();
      String jsonUser = json.encode(convertableMap);
      pref.setString('catloaf', jsonUser);

      //* emit new user to Bloc
      emit(LoadedTodos(user));
    } catch (e) {
      emit(Welcome());
    }
  }

  void parseJson() async {
    emit(LoadingTodos());
    try {
      // decode JSON object to dart Map
      var pref = await prefInstance;

      String jsonUser = pref.getString("catloaf")!;

      var decodedString = json.decode(jsonUser);

      User user = User.fromJson(decodedString);

      emit(LoadedTodos(user));
    } catch (e) {
      emit(Welcome());
    }
  }
}
