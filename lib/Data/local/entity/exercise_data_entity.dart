import 'package:drift/drift.dart';

class ExerciseDetails extends Table {
  
  TextColumn get name => text().named('name')();
  IntColumn get sets => integer().named('sets')();
  IntColumn get reps => integer().named('reps')();
  BoolColumn get isDropset => boolean().named('isDropset')();
  BoolColumn get isToFailure => boolean().named('isToFailure')();
  TextColumn get planId => text().named('planId')();
  TextColumn get id => text().named('id')();

}