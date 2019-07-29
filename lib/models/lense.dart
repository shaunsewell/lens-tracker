import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';


class Lense with ChangeNotifier{

  int id;
  int days;
  double totalWearTime;
  DateTime dateStarted;
  String type;

  // Default constructor for hive
  Lense();
  // Constructor for all other uses
  Lense.init({
    @required this.id,
    @required this.days, 
    @required this.totalWearTime, 
    @required this.dateStarted, 
    @required this.type
    });


  // Methods
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
      'id' : id,
      'days': days,
      'totalWearTime': totalWearTime,
      'dateStarted': dateStarted,
      'type': type,
    };
  }

  static Lense fromMap(Map<dynamic, dynamic> map) {
    return Lense.init(
      id: map['id'],
      days: map['days'],
      totalWearTime: map['totalWearTime'],
      dateStarted: map['dateStarted'],
      type: map['type'],
    );
  }

}
