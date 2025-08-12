void main() {
  info i1 = info(
    name: 'shayan',
    email: 'shayan@gmail.com',
    phone: 1234567890,
    age: 21,
  );
  // // i1.name = 'shayanZAhid';
  // // i1.age = 20;
  // // i1.phone = 0318644464;
  // i1.email = 'shayanZAhid@gmail.com';

  i1.displayInfo();
  final List<info> data = [
    info(name: 'name', email: 'email', phone: 1234567890, age: 21),
    info(name: 'name2', email: 'email2', phone: 098765432, age: 12),
  ];
  data.forEach((i) {
    print(
      "name ${i.name}\email ${i.email}\nPhone ${i.phone}\nage ${i.age}\n******",
    );
  });
}

class info {
  String? name;
  String? email;
  int? phone;
  int? age;
  info({
    required this.name,
    required this.email,
    required this.phone,
    this.age,
  });
  void displayInfo() {
    print('Name: $name');
    print('Email: $email');
    print('Phone: $phone');
    print('Age: $age');
  }
}
