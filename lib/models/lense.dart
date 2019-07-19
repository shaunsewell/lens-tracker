import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';

class Lense with ChangeNotifier{
  int id;

  int days;
  double totalWearTime;
  final DateTime dateStarted;
  final String type;

  Lense({
    @required this.days, 
    @required this.totalWearTime, 
    @required this.dateStarted, 
    @required this.type
    });


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


  Map<String, dynamic> toMap() {
    return {
      'days': days,
      'totalWearTime': totalWearTime,
      'dateStarted': dateStarted,
      'type': type,
    };
  }

  static Lense fromMap(Map<String, dynamic> map) {
    return Lense(
      days: map['days'],
      totalWearTime: map['totalWearTime'],
      dateStarted: map['dateStarted'],
      type: map['type'],
    );
  }

}
