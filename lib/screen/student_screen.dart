import 'package:flutter/material.dart';

class StudentScreen extends StatelessWidget {
  const StudentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Management'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
                decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Student Name',
            )),
          ),
          ElevatedButton(onPressed: () {}, child: const Text('Add Student')),
        ]),
      ),
    );
  }
}
