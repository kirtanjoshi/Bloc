import 'package:getstatemanagement/Bloc/models/product_model.dart';
import 'package:http/http.dart' as http;

class ProductsRepo {
  Future<List<Products>> getProducts() async {
    var response =
        await http.get(Uri.parse("https://fakestoreapi.com/products"));
    if (response.statusCode == 200) {
      return productsFromJson(response.body);
    } else {
      throw Exception("Failed to load");
    }
  }
}
