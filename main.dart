import 'dart:convert';
import 'package:course_assignment_2/semester_details.dart';
import 'package:flutter/material.dart';
import 'semester.dart';
import 'package:course_assignment_2/utils.dart';

void main() => runApp(
    MaterialApp(
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomePage(),
        '/semester': (context) => Items(),
        '/details': (context) => SemesterDetails()
    },

));

class HomePage extends StatefulWidget{
  @override
  HomePageState createState() => new HomePageState();

}

class HomePageState extends State<HomePage>{

  void loadData() async {
    final dataStr = await DefaultAssetBundle.of(context).loadString('assets/data.json');
    final List jsonData = jsonDecode(dataStr)['data'];

    Navigator.pushReplacementNamed(context, '/semester', arguments: {'data': jsonData});
  }

  @override
  void initState() {
    super.initState();
    this.loadData();
  }
  @override
  Widget build(BuildContext context){

    return new Scaffold(

      appBar: buildAppBar()
    );
  }
}