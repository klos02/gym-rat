import 'package:drift/drift.dart';
import 'package:gym_rat/Data/local/entity/string_list_converter.dart';

class WorkoutPlan extends Table{

  TextColumn get name => text().named('name')();
  TextColumn get exercises =>
      text().map(const StringListConverter()).named('exercises')();
  IntColumn get id => integer().autoIncrement()();


}



