import 'package:flutter/material.dart';
import '../models/student.dart';
import 'student_item.dart';

class Students extends StatelessWidget {
  final List<Student> students;

  const Students({Key? key, required this.students}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Students')),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          return StudentItem(student: students[index]);
        },
      ),
    );
  }
}
