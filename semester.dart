import 'package:flutter/material.dart';
import 'semester_details.dart';
import 'package:course_assignment_2/utils.dart';

class Items extends StatefulWidget {
  @override
  _ItemsState createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  List data = [];

  @override
  Widget build(BuildContext context) {

    if(data.isEmpty) {
      Map temp =  ModalRoute.of(context).settings.arguments;
      this.data = temp['data'];
    }

    return Scaffold(
        appBar: buildAppBar(),
        body: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return new Single_prod(
                sem_id: data[index]["id"],
                sem_name: data[index]["semesterNumber"],
                sem_gpa: data[index]["overallGPA"],
                sem_details: data[index]['courses'],
              );
            },
            itemCount: data.length,
          )
    );
  }
}

class Single_prod extends StatelessWidget {
  String sem_id;
  String sem_name;
  String sem_gpa;
  List sem_details;

  Single_prod({
    this.sem_id,
    this.sem_name,
    this.sem_gpa,
    this.sem_details,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: sem_name,
          child: Material(
            child: InkWell(

              onTap: () => Navigator.pushNamed(context, '/details', arguments: {
              'sem_id': sem_id,
              'sem_gpa': sem_gpa,
              'sem_courses': sem_details}),

              child: ListTile(
                leading: Text(
                  "$sem_name",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                title: Text(
                  sem_id,
                  style:
                      TextStyle(color: Colors.black, fontWeight: FontWeight.w800),
                ),
                subtitle: Text(
                  "$sem_gpa",
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w800),
                ),
              ),
            ),
          )),
    );
  }
}
