import 'package:flutter/material.dart';
class CourseDetails extends StatefulWidget {
  final String courseName;
  final int courseNumber;
  const CourseDetails({super.key, required this.courseName, required this.courseNumber});


  @override
  State<CourseDetails> createState() => _CourseDetailsState();

}

class _CourseDetailsState extends State<CourseDetails> {

  @override
  Widget build(BuildContext context) {
    print(widget.courseName);
    return Scaffold();
  }
}
