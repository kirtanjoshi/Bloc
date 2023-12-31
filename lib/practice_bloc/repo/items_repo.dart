import 'package:getstatemanagement/practice_bloc/models/items_model.dart';
import 'package:http/http.dart' as http;

class ItemsRepo {
  Future<Todo> getItems() async {
    // var response = await http.get(Uri.parse("https://dummyjson.com/todos"));
    var response =
        await http.get(Uri.parse("https://yts.mx/api/v2/list_movies.json"));
    if (response.statusCode == 200) {
      return todoFromJson(response.body);
    } else {
      throw Exception("Could not get");
    }
  }
}
