import 'package:flutter/material.dart';

class ToDoContainer extends StatelessWidget {
  int id;
  final String title;
  final String description;
  final bool is_done;
  ToDoContainer(
      {Key? key,
      required this.title,
      required this.description,
      this.is_done = false,
      this.id = 0})
      : super(key: key);
  // const ToDoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: 160,
        decoration: const BoxDecoration(
            color: Colors.pink,
            borderRadius: BorderRadius.all(Radius.circular(4))),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                description,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
