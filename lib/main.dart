import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:futursity/Repository/Api/Bloc/Course/course_bloc.dart';
import 'package:futursity/Repository/Api/CoursePageApi/course_api.dart';
import 'View/CourseScreen/course_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    CourseApi courseApi = CourseApi();
    return BlocProvider(
      create: (context) => CourseBloc(courseApi),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Futursity',
        theme: ThemeData(
          primarySwatch: Colors.grey,
        ),
        home: const ScreenCourse(),
      ),
    );
  }
}
