import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/post_model.dart';

class PostService {
  static Future<List<PostModel>> getPosts() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    if (response.statusCode == 200) {
      List data = json.decode(response.body);
      return data.map((json) => PostModel.fromJson(json)).toList();
    } else {
      throw Exception('Gagal mengambil data');
    }
  }
}