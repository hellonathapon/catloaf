class Todo {
  Todo(
      {required this.id,
      required this.title,
      required this.desc,
      required this.dateCreated,
      required this.dateDue,
      this.isDone = false});

  final int id;
  final String title;
  final String desc;
  final DateTime dateCreated;
  final DateTime dateDue;
  bool isDone;

  Todo copyWith(
      {int? id,
      String? title,
      String? desc,
      DateTime? dateCreated,
      DateTime? dateDue,
      bool? isDone}) {
    return Todo(
      id: id ?? this.id,
      title: title ?? this.title,
      desc: desc ?? this.desc,
      dateCreated: dateCreated ?? this.dateCreated,
      dateDue: dateDue ?? this.dateDue,
      isDone: isDone ?? this.isDone,
    );
  }
}
