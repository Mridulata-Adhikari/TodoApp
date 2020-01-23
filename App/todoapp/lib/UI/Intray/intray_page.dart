import 'package:flutter/material.dart';
import 'package:todoapp/models/global.dart';
import 'package:todoapp/models/widgets/intray_todo_widget.dart';

class IntrayPage extends StatefulWidget {
  @override
  _IntrayPageState createState() => _IntrayPageState();
}

class _IntrayPageState extends State<IntrayPage> {
  List<IntrayTodo> todoItems = [];
  @override
  Widget build(BuildContext context) {
    todoItems = getList();
    return Container(
      color: darkGreyColor,
      child: ReorderableListView(
        padding: EdgeInsets.only(top: 300),
        children: todoItems,
        onReorder: _onReorder,
      ),
    );
  }

  void _onReorder(int oldIndex, int newIndex) {
    setState(() {
      if (newIndex > oldIndex) {
        newIndex -= 1;
      }
      final IntrayTodo item = todoItems.removeAt(oldIndex);
      todoItems.insert(newIndex, item);
    });
  }

  List<Widget> getList() {
    for (int i = 0; i < 10; i++) {
      todoItems.add(IntrayTodo(keyValue: i.toString(), title: "Hello"));
    }
    return todoItems;
  }
}
