import 'package:getstatemanagement/velocity_bloc/models/todo_model.dart';
import 'package:http/http.dart' as http;

class TodoRepo {
  Future<TodoModel> getTodo() async {
    var response = await http.get(Uri.parse("https://dummyjson.com/todos"));
    if (response.statusCode == 200) {
      return todoModelFromJson(response.body);
    } else {
      throw Exception("Failed to load ToDo");
    }
  }
}
