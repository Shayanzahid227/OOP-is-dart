// encapsulation : hiding data from external resources

class encap {
  String? _name;
  int? _age;
  encap(this._name, this._age);
  void displayInfo() {
    print('Name: $_name   Age:$_age');
  }

  ///
  ///. getter to make it public
  ///
  String? get name => _name;
  int? get age => _age;

  ///
  ///.  setter to make it able to change their values if need (set key word must)
  ///
  set nameSetterFunction(String name) {
    _name = name;
  }

  set ageSetterFunction(int age) {
    if (age > 0) {
      _age = age;
    }
  }
}
