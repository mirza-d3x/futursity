part of 'course_bloc.dart';

@immutable
abstract class CourseState {}

class CourseInitial extends CourseState {}

class CourseLoading extends CourseState {}

class CourseLoaded extends CourseState {}

class CourseError extends CourseState {}

class CategoryLoading extends CourseState {}

class CategoryLoaded extends CourseState {}
class CategoryError extends CourseState {}

