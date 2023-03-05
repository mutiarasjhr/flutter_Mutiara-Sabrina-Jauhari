// class Calculator {
//   penjumlahan(int a, int b) {
//     return a + b;
//   }

//   pengurangan(int a, int b) {
//     return a - b;
//   }

//   perkalian(int a, int b) {
//     return a * b;
//   }

//   pembagian(int a, int b) {
//     return a / b;
//   }
// }

// void main() {
//   int a = 10;
//   int b = 2;

//   print(Calculator().penjumlahan(a, b));
//   print(Calculator().pembagian(a, b));
//   print(Calculator().perkalian(a, b));
//   print(Calculator().pengurangan(a, b));
// }

class Course {
  String judul;
  String deskripsi;

  Course({required this.judul, required this.deskripsi});
}

class Student {
  String nama;
  String kelas;
  List<Course> courses = [];

  Student({required this.nama, required this.kelas});

  void addCourse(Course course) {
    courses.add(course);
  }

  void removeCourse(Course course) {
    courses.remove(course);
  }

  void viewCourses() {
    if (courses.isEmpty) {
      print("$nama tidak memiliki course yang ditambahkan.");
    } else {
      print("$nama dari kelas $kelas memiliki ${courses.length} course:");
      for (var course in courses) {
        print("- ${course.judul}: ${course.deskripsi}");
      }
    }
  }
}

void main() {
  var course1 = Course(
      judul: "Fundamental Class", deskripsi: "Fundamental Mobile Development");
  var course2 = Course(
      judul: "Mastering Class",
      deskripsi: "Mastering Mobile development with Flutter");
  var course3 = Course(
      judul: "Mastering Class",
      deskripsi: "Mastering Front-End Development with ReactJs");

  var student = Student(nama: "Rebecca", kelas: "B");

  student.addCourse(course1);
  student.addCourse(course2);
  student.addCourse(course3);

  student.viewCourses();

  student.removeCourse(course1);

  student.viewCourses();
}
