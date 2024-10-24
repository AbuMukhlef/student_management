import 'package:flutter/material.dart';

import '../model/student_manager.dart';

class StudentScreen extends StatelessWidget {
  StudentScreen({super.key});
  final StudentManager _studentManager = StudentManager();
  final TextEditingController _studentNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Management'),
      ),
      body: Center(
        child: ListView(children: [
          const SizedBox(height: 300),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
                controller: _studentNameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Student Name',
                )),
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
                controller: _studentNameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Student Id',
                )),
          ),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                  onPressed: () {
                    print(_studentNameController.text);
                  },
                  icon: const Icon(Icons.remove_circle),
                  label: const Text('Remove Student')),
              const SizedBox(width: 25),
              ElevatedButton.icon(
                  onPressed: () {
                    print(_studentNameController.text);
                  },
                  label: const Text('Add Student'),
                  icon: const Icon(Icons.add_circle)),
            ],
          ),
        ]),
      ),
    );
  }
}
