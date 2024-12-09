import 'dart:convert';
import 'package:http/http.dart' as http;
import 'course_model.dart';

class CourseService {
  final String apiUrl = 'http://192.168.2.45:5050/products';

  Future<List<Course>> fetchCourses() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((courseJson) => Course.fromJson(courseJson)).toList();
    } else {
      throw Exception('Failed to load courses');
    }
  }
}
