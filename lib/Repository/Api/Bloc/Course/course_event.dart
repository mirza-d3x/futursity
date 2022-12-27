part of 'course_bloc.dart';



@immutable
abstract class CourseEvent {}

class GetCourseEvent extends CourseEvent {}

class GetCategoriesEvent extends CourseEvent {}
