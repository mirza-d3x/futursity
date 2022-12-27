import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:futursity/Model/categories_model.dart';
import 'package:futursity/Model/top_course_model.dart';
import 'package:futursity/Repository/Api/CoursePageApi/course_api.dart';
import 'package:meta/meta.dart';

part 'course_event.dart';

part 'course_state.dart';

class CourseBloc extends Bloc<CourseEvent, CourseState> {
  late List<TopCourseModel> topCourseModel;
  late List<CategoriesModel> categoriesModel;
  CourseApi courseApi;

  CourseBloc(this.courseApi) : super(CourseInitial()) {
    on<GetCourseEvent>((event, emit) async {
      emit(CourseLoading());
      try {
        topCourseModel = await courseApi.getCourse();
        emit(CourseLoaded());
      } catch (e) {
        emit(CourseError());
      }
    });

    on<GetCategoriesEvent>((event, emit) async {
      emit(CategoryLoading());
      try {
        categoriesModel = await courseApi.getCategories();
        emit(CategoryLoaded());
      } catch (e) {
        emit(CategoryError());
      }
    });
  }
}
