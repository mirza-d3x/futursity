import 'dart:convert';

import 'package:futursity/Model/categories_model.dart';
import 'package:futursity/Repository/Api/api_client.dart';
import 'package:http/http.dart';
import '../../../Model/top_course_model.dart';

class CourseApi {
  ApiClient apiClient = ApiClient();

  Future<List<TopCourseModel>> getCourse() async {
    const String path = 'top_courses';
    Response response =
        await apiClient.invokeAPI(path: path, method: 'GET', body: null);
    return TopCourseModel.listFromJson(jsonDecode(response.body));
  }

  Future<List<CategoriesModel>> getCategories() async {
    const String path = 'categories';
    Response response =
        await apiClient.invokeAPI(path: path, method: 'GET', body: null);
    return CategoriesModel.listFromJson(jsonDecode(response.body));
  }
}
