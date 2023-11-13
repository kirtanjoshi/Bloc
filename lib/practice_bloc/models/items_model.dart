// To parse this JSON data, do
//
//     final todo = todoFromJson(jsonString);

import 'dart:convert';

Todo todoFromJson(String str) => Todo.fromJson(json.decode(str));

String todoToJson(Todo data) => json.encode(data.toJson());

class Todo {
  List<TodoElement>? todos;
  int? total;
  int? skip;
  int? limit;

  Todo({
    this.todos,
    this.total,
    this.skip,
    this.limit,
  });

  factory Todo.fromJson(Map<String, dynamic> json) => Todo(
        todos: json["todos"] == null
            ? []
            : List<TodoElement>.from(
                json["todos"]!.map((x) => TodoElement.fromJson(x))),
        total: json["total"],
        skip: json["skip"],
        limit: json["limit"],
      );

  Map<String, dynamic> toJson() => {
        "todos": todos == null
            ? []
            : List<dynamic>.from(todos!.map((x) => x.toJson())),
        "total": total,
        "skip": skip,
        "limit": limit,
      };
}

class TodoElement {
  int? id;
  String? todo;
  bool? completed;
  int? userId;

  TodoElement({
    this.id,
    this.todo,
    this.completed,
    this.userId,
  });

  factory TodoElement.fromJson(Map<String, dynamic> json) => TodoElement(
        id: json["id"],
        todo: json["todo"],
        completed: json["completed"],
        userId: json["userId"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "todo": todo,
        "completed": completed,
        "userId": userId,
      };
}
