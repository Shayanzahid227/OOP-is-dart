// chat gpt questions
void main() {
  ///
  ///. car class
  ///
  //first car detail
  /*
  final c1 = car();
  c1.brand = "honda";
  c1.year = 2020;
  c1.model = "2019";
  c1.displayInfo();
  // second car detail
  final c2 = car();
  c2.brand = "Mazda";
  c2.year = 2008;
  c2.model = "2005";
  c2.displayInfo();*/
  ///
  ///
  ///. student class
  ///
  /*
  final s1 = student();
  s1.name = 'shayan Zahid';
  s1.rollNUmber = 089;
  s1.marks = [85, 89, 91, 86, 97];
  s1.displayInfo();
  // second student
  final s2 = student();
  s2.name = 'Hasnain gujjar';
  s2.rollNUmber = 089;
  s2.marks = [65, 59, 76, 51, 82];
  s2.displayInfo();
  */
}

class car {
  String? brand;
  String? model;
  int? year;
  String stars =
      "**************************************************************************************";
  void displayInfo() {
    print(
      'Car brand is : $brand and model is : $model and registration year is : $year\n$stars',
    );
  }
}

///
///. student details and average of marks
///
class student {
  String? name;
  int? rollNUmber;
  List<double>? marks = [];
  double? percentage;
  String stars =
      "**************************************************************************************";
  student(this.name, this.rollNUmber, this.marks, this.percentage);
  void displayInfo() {
    print("student name : $name\nroll number : $rollNUmber");
    double sum = 0;
    int i;
    for (i = 0; i < marks!.length; i++) {
      sum = sum + marks![i];
    }
    percentage = sum / 500 * 100;
    print("the average marks of $name is : $percentage\n$stars");
  }
}
