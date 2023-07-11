import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:todo/Constants/api.dart';
import 'package:http/http.dart' as http;
import 'package:todo/Models/todo.dart';
import 'package:todo/Widgets/app_bar.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ToDo> myToDos = [];
  // bool isLoader = false;
  bool isLoading = true;
  void fetchData() async {
    try {
      http.Response response = await http.get(Uri.base);
      var data = json.decode(response.body);
      data.forEach((todo){
        ToDo t = ToDo(id: todo.id, title: todo['title'], description: todo['description'], is_done: todo['is_done'], date: todo['date']);
        myToDos.add(t);
      });
      print(myToDos.length);
      setState(() {
        isLoading = false;
      });
      // data = json.decode(data);
      print(data);
    } catch(e) {
      print("Error is $e");
    }
  }
  @override
  void initState() {
    fetchData();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: Center(child: Text("SANDEEP PAL")),
    );
  }
}