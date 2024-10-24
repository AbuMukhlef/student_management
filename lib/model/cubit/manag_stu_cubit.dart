import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_management/model/student.dart';
import '../student_manager.dart';

part 'manag_stu_state.dart';

class ManagStuCubit extends Cubit<ManagStuState> {
  ManagStuCubit() : super(ManagStuInitial());

  List<Student> get students => StudentManager.students;

  void addStudent({required String name}) {
    emitLoading();
    StudentManager.addStudent(name: name);
    print('Student Added');
    emitUpdate();
  }

  void removeStudent({required String id}) {
    emitLoading();
    StudentManager.removeStudent(id: id);
    print('Student Removed');
    emitUpdate();
  }

  void emitLoading() => emit(LoadingState());

  void emitUpdate() => emit(UpdateState());
}
