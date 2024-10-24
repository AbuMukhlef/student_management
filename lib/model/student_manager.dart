import 'student.dart';

class StudentManager {
  static final List<Student> _students = [];

  static List<Student> get students => _students;

  static void addStudent({required String name}) {
    String id = DateTime.now().toString();
    _students.add(Student(id: id, name: name));
  }

  static void removeStudent({required String id}) {
    _students.removeWhere((student) => student.id == id);
  }
}
