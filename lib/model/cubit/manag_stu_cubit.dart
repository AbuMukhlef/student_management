import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../student_manager.dart';

part 'manag_stu_state.dart';

class ManagStuCubit extends Cubit<ManagStuState> {
  ManagStuCubit() : super(ManagStuInitial());

  void addStudent({required String name}) {
    emitLoading();
    StudentManager.addStudent(name: name);
    emitUpdate();
  }

  void removeStudent({required String id}) {
    emitLoading();
    StudentManager.removeStudent(id: id);
    emitUpdate();
  }

  void emitLoading() => emit(LoadingState());

  void emitUpdate() => emit(UpdateState());
}
