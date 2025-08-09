void main() {
  // objects create more if you want
  final student1 = student();
  final teacher1 = teacher();
  final admin1 = admin();
  final swiper = class4();
  //
  student1.name = 'shayanZahid';
  student1.age = 21;
  student1.id = 4619;
  student1.role = 'student';
  //
  teacher1.name = 'sir Awais';
  teacher1.age = 25;
  teacher1.id = 50812;
  teacher1.role = 'Teacher';
  //
  admin1.name = 'Talha';
  admin1.age = 23;
  admin1.id = 0383;
  admin1.role = 'Super Admin';
  //
  swiper.name = 'Sha Husain';
  swiper.age = 40;
  swiper.id = 2893;
  swiper.role = 'Swiper';
  // calling function
  student1.displayStudentInfo();
  teacher1.displayTeacherInfo();
  admin1.displayAdminInfo();
  swiper.displayClass4Info();
}

///
///. parent class
///
class info {
  String? name;
  int? age;
  int? id;
  String? role;
  // void parentinfo() {
  //   void displayParentInfo() {
  //     print("Name: $name Age: $age Id: $id Role: $role");
  //   }
  // }
}

///
///. child classes
///
class student extends info {
  ///
  ///. if constructor is used in parent class then below method should be followed
  ///

  //student():super('shayan',21,4619,'student');
  void displayStudentInfo() {
    print('\n');
    print(
      "studentName: $name studentAge: $age studentId: $id studentRole: $role\n******************************************************************************************************************************************************************",
    );
  }
}

class teacher extends info {
  void displayTeacherInfo() {
    print('\n');
    print(
      "teacherName: $name teacherAge: $age teacherId: $id teacherRole: $role\n******************************************************************************************************************************************************************",
    );
  }
}

class admin extends info {
  void displayAdminInfo() {
    print('\n');
    print(
      "adminName: $name adminAge: $age adminId: $id adminRole: $role\n******************************************************************************************************************************************************************",
    );
  }
}

class class4 extends info {
  void displayClass4Info() {
    print('\n');
    print(
      "class4Name: $name class4Age: $age class4Id: $id class4Role: $role\n******************************************************************************************************************************************************************",
    );
  }
}
