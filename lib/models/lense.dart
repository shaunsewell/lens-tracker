import 'package:flutter/foundation.dart';

class Lense with ChangeNotifier{
  int days;
  double totalWearTime;
  final DateTime dateStarted;
  final String type;

  Lense(this.days, this.totalWearTime, this.dateStarted, this.type);


  // Methods
  int get stateDays => days;
  double get stateTotalWearTime => totalWearTime;
  DateTime get stateDateStarted => dateStarted;
  String get stateLenseType => type;

  set stateTotalWearTime(double newValue) {
    this.totalWearTime = newValue;
    notifyListeners();
  }

  set stateDays(int numberOfDays){
    this.days = numberOfDays;
    notifyListeners();
  }
}
