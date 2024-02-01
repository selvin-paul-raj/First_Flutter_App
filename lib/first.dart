import 'package:flutter/material.dart';

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  int a = 100;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.yellow,
       title: Text("Information Technology",style: TextStyle(color: Colors.black)),
       centerTitle: true,
     ),
     body: Column(
        children: [
          Text("SELVIN $a"),
          Text("ABISHEK R"),

        ]
     ),
   );

  }
}
