void main() {
  // you can change it also
  // final p = person(); // p is object of Person class
  // final p2 = person();
  // // first object
  // p.name = 'khan gul';
  // p.fatherName = 'khan gul senior';
  // p.age = 50;
  // // second object
  // p2.name = 'khan gul junior';
  // p2.fatherName = 'khan gul';
  // p2.age = 20;
  // constructorMethod
  // p.info();
  // p2.info();
  final p3 = person('shayan', 'zahid', 21, [
    2,
    22,
    3,
    34,
    4,
  ], "**********************************************");
}

//Dart only allows variable declarations and methods (mean funtion like info in below code) inside a class body.
//You can only execute code like print() inside a method or constructor.
class person {
  String? name;
  String? fatherName;
  int? age;
  List? number = [];
  String star =
      "***********************************************************************************";
  // print('${name} ${fatherName} ${age}');
  void info() {
    print(
      'My name is $name, my father name is $fatherName and my age is $age\n$star',
    );
  }

  // constructor
  ///
  ///. when attributes call in constructor and then we access the class in main then it required values of attributes
  ///
  person(this.name, this.fatherName, this.age, this.number, this.star) {
    // i will not able to call function from constructor because it is not allowed in dart it's scope is only up to constructor it is not a part of class
    void constructorMethod() {
      print('$name $fatherName $age');
    }

    print(
      "constructor called \n the name is $name\n" +
          " the father name is $fatherName\n" +
          " the age is $age\n" +
          " the numbers are $number \n" +
          "\n $star",
    );
  }
}
