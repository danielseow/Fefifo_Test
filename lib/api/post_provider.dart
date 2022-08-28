import 'dart:convert';
import 'package:http/http.dart' as http;

class PostProvider {
  final BASE_URL = "https://jsonplaceholder.typicode.com";
  Future<Object> getPostsProvider() async {
    try {
      http.Response response = await http.get(Uri.parse('$BASE_URL/posts'));
      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        return {"error": "Error"};
      }
    } catch (e) {
      return {"error": e.toString()};
    }
  }
}
