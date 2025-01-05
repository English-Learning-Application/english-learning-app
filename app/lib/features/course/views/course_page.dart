import 'package:app/app.dart';
import 'package:app/features/course/view_models/course.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CoursePage extends StatefulWidget {
  const CoursePage({super.key});

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends BasePageState<CoursePage, CourseViewModel> {
  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(body: Container());
  }

  @override
  void initViewModels() {}

  @override
  String get screenName => 'CoursePage';
}
