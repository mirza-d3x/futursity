import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:futursity/Model/categories_model.dart';
import 'package:futursity/Model/top_course_model.dart';
import 'package:futursity/Repository/Api/Bloc/Course/course_bloc.dart';

class ScreenCourse extends StatefulWidget {
  const ScreenCourse({Key? key}) : super(key: key);

  @override
  State<ScreenCourse> createState() => _ScreenCourseState();
}

class _ScreenCourseState extends State<ScreenCourse> {
  @override
  void initState() {
    BlocProvider.of<CourseBloc>(context).add(GetCourseEvent());
    BlocProvider.of<CourseBloc>(context).add(GetCategoriesEvent());
    super.initState();
  }

  late List<TopCourseModel> topCourseModel;
  late List<CategoriesModel> categoriesModel;

  @override
  Widget build(BuildContext context) {
    final mHeight = MediaQuery.of(context).size.height;
    final mWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Icon(Icons.shield),
        backgroundColor: Colors.white,
      ),
      body: Container(
        height: mHeight,
        width: mWidth,
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
          top: 10,
        ),
        child: ListView(
          shrinkWrap: true,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Top Course',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'All Courses >',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            Container(
              height: mHeight * .35,
              margin: const EdgeInsets.only(top: 10),
              width: mWidth,
              child: BlocBuilder<CourseBloc, CourseState>(
                builder: (context, state) {
                  print(state);
                  if (state is CourseLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (state is CourseError) {
                    return const Center(
                      child: Text('Error'),
                    );
                  }
                  if (state is CourseLoaded) {
                    topCourseModel =
                        BlocProvider.of<CourseBloc>(context).topCourseModel;
                    return ListView.builder(
                      itemCount: topCourseModel.length,
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) =>
                          Container(
                        height: mHeight * .3,
                        width: mWidth * .5,
                        margin: const EdgeInsets.only(left: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Card(
                          elevation: 5,
                          child: Column(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                          topCourseModel[index].thumbnail!,
                                        ),
                                        fit: BoxFit.fill),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child: Text(
                                    topCourseModel[index].title!,
                                    style: const TextStyle(
                                        fontSize: 22, color: Colors.blue),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }
                  return Container();
                },
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            BlocBuilder<CourseBloc, CourseState>(
              builder: (context, state) {
                if (state is CourseLoaded) {
                  categoriesModel =
                      BlocProvider.of<CourseBloc>(context).categoriesModel;
                  return GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 30,
                      mainAxisSpacing: 30,
                      childAspectRatio: .9,
                    ),
                    shrinkWrap: true,
                    itemCount: categoriesModel.length,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      final String colorCode =
                          '0xff${categoriesModel[index].code!}';
                      return Container(
                        decoration: BoxDecoration(
                          color: Color(int.parse(colorCode)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          categoriesModel[index].thumbnail!),
                                      fit: BoxFit.fill),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  categoriesModel[index].name!,
                                  style: const TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                }
                return Container();
              },
            ),
          ],
        ),
      ),
    );
  }
}
