// abstract class of which we can not make a object but we use it as base class using extends key word like as we do in inheritance
// method inside abstract class have no body end with semicolon
// specially used in API services

void main() {
  Map<String, String> userData = {
    'name': 'ShayanZahid',
    'email': 'shayan@gmail.com',
    'password': '1234567890',
  };
  networkServicesAPi npi = networkServicesAPi();
  npi.postApi(userData);
}

///
///. if i have to use multiple postApis to use or something like that so we can use abstract class...
///. then using inheritance we can use it and modify it according to our need
///
abstract class BaseApiServices {
  void postApi(var data);
  void getApi();
}

class networkServicesAPi extends BaseApiServices {
  @override
  void postApi(var data) async {
    await Future.delayed(Duration(seconds: 2));
    print('--- User login successfully ---');
    print(
      "\nUser detail:\n  Name: ${data['name']}\n  Email: ${data['email']}\n  Password: ${data['name']}\n******************************************************",
    );
  }

  @override
  void getApi() {}
}
