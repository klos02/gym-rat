import 'package:drift/drift.dart';
import 'package:gym_rat/Data/local/entity/string_list_converter.dart';

class SpecificWorkout extends Table {
  
  TextColumn get name => text().named('name')();
  DateTimeColumn get date => dateTime().named('date')();
  TextColumn get exercises => text().map(const StringListConverter()).named('primaryMuscles')();


  
}
