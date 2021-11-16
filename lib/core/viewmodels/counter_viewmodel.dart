import 'package:biolink/core/services/storage/storage_service.dart';
import 'package:biolink/locator.dart';
import 'package:flutter/foundation.dart';

class CounterViewModel extends ChangeNotifier {
  int _counter = 0;
  int get counter => _counter;

  final StorageService _storageService = locator<StorageService>();

  Future loadData() async {
    _counter = await _storageService.getCounterValue();
    notifyListeners();
  }

  void increment() {
    _counter++;
    _storageService.setCounterValue(_counter);
    notifyListeners();
  }

  void decrement() {
    _counter--;
    _storageService.setCounterValue(_counter);
    notifyListeners();
  }
}
