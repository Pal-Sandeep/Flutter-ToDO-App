import 'package:flutter/material.dart';


class ToDoContainer extends StatelessWidget {
  int id;
  final String title;
  final String description;
  final bool is_done;
   ToDoContainer({Key? key, required this.title, required this.description, this.is_done=false,this.id=0}) :super(key: key);
  // const ToDoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}