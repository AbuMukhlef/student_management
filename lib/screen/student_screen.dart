import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../model/cubit/manag_stu_cubit.dart';
import '../model/student_manager.dart';

class StudentScreen extends StatelessWidget {
  StudentScreen({super.key});
  final TextEditingController _studentNameController = TextEditingController();
  final TextEditingController _studentIdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ManagStuCubit(),
      child: Builder(builder: (context) {
        final cubit = context.read<ManagStuCubit>();
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
                    controller: _studentIdController,
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
                        cubit.removeStudent(id: _studentIdController.text);
                      },
                      icon: const Icon(Icons.remove_circle),
                      label: const Text('Remove Student')),
                  const SizedBox(width: 25),
                  ElevatedButton.icon(
                      onPressed: () {
                        cubit.addStudent(name: _studentNameController.text);
                      },
                      label: const Text('Add Student'),
                      icon: const Icon(Icons.add_circle)),
                ],
              ),
            ]),
          ),
        );
      }),
    );
  }
}
