import 'package:flutter/material.dart';

Widget buildAppBar(){
   return AppBar(
     elevation: 2,
     title: Center(
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Container(
             child: Text('Abdul Ahad Niaz'),
           ),
           Image.asset(
             "assets/image.jpg",
             fit: BoxFit.contain,
             height: 72,
           ),
         ],
       ),
     ),
   );
}