// default constructor called once we initialized object of that class
void main() {
  List<student> info = [
    student('Shayan', 'B', [89, 91, 86, 85, 76]),
    student('Hasnain', 'C', [99, 71, 76, 65, 56]),
    student('Masoad', 'A', [79, 71, 77, 98, 76]),
    student('Yasir', 'D', [99, 91, 96, 95, 96]),
  ];
  /*
  for (int idx = 0; idx < info.length; idx++) {
    var i = info[idx];
    i.calPercentage();
    print(
      "student ${idx + 1} record: \nname: ${i.name}\nsection: ${i.section}\nmarks: ${i.marks}\nPercentage: ${i.percentage?.toStringAsFixed(2)}%\n\n**************************************************************\n\n",
    );
  }
  */

  ///
  /// booth foreach loop show same result but above one also show index
  ///

  /*
  info.forEach((i) {
    i.calPercentage();
    print(
      " record: \nname: ${i.name}\nsection: ${i.section}\nmarks: ${i.marks}\nPercentage: ${i.percentage?.toStringAsFixed(2)}%\n\n**************************************************************\n\n",
    );
  });
  */
}

class student {
  String? name;
  String? section;
  double? percentage;
  List<int>? marks = [];

  student(this.name, this.section, this.marks);

  ///
  /// calculate student percentage
  ///
  void calPercentage() {
    double sum = 0;
    for (int i = 0; i < marks!.length; i++) {
      sum = sum + marks![i];
    }
    this.percentage = sum / 500 * 100;
  }
}
