import 'encap.dart';

void main() {
  encap e = encap('shayan', 25);
  e.nameSetterFunction = 'ShayanZAhid';
  e.ageSetterFunction = 21;
  print("${e.name}. ${e.age}");

  ///
  print('\n ----this will print data from list----\n');
  List<encap> data = [
    encap('shayan', 25),
    encap('hasnain', 21),
    encap('ali', 18),
  ];
  //
  int ind = 0;
  data.forEach((i) {
    ind++;
    print(
      "student ${ind}\nName: ${i.name} Age: ${i.age}\n***************************************************",
    );
  });
}
