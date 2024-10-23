import 'student.dart';

class StudentManager {
  final List<Student> _students = [];

  List<Student> get students => _students;

  void addStudent({required String name}) {
    String id = DateTime.now().toString();
    _students.add(Student(id: id, name: name));
  }

  void removeStudent(String id) {
    _students.removeWhere((student) => student.id == id);
  }
}
