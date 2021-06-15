import 'package:course_assignment_2/utils.dart';
import 'package:flutter/material.dart';

class SemesterDetails extends StatefulWidget {
  @override
  _SemesterDetailsState createState() => _SemesterDetailsState();
}

class _SemesterDetailsState extends State<SemesterDetails> {
  @override
  Map data;

  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;


    return Scaffold(
      // App Bar
      appBar: buildAppBar(),

      // Body of Product Details Page
      body: ListView.builder(
            itemCount: data['sem_courses'].length,

            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 4),
                child: Card(
                  child: ListTile(
                    title:  Text("${data['sem_courses'][index]["subjects"]}", style: TextStyle(color: Colors.grey)),
                    subtitle: Text("${data['sem_courses'][index]["gpa"]}", style: TextStyle(color: Colors.blue)),
                  ),
                ),
              );
        }),
    );
  }
}
