import 'package:flutter/material.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  final List<String> _tasks = [
    'Complete project proposal',
    'Review code changes',
    'Update documentation',
  ];
  final List<bool> _completed = [false, true, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Tasks'),
      ),
      body: ListView.builder(
        itemCount: _tasks.length,
        itemBuilder: (context, index) {
          return CheckboxListTile(
            title: Text(
              _tasks[index],
              style: TextStyle(
                decoration: _completed[index]
                    ? TextDecoration.lineThrough
                    : null,
              ),
            ),
            value: _completed[index],
            onChanged: (bool? value) {
              setState(() {
                _completed[index] = value ?? false;
              });
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add task
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
