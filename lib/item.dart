import 'package:flutter/foundation.dart';

class Items with ChangeNotifier{
  String someValue = 'Hello';

  void doSomething(){
    someValue = 'Goodbye';
    print(someValue);
    notifyListeners();
  }
}