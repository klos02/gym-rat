import 'package:drift/drift.dart';
import 'package:gym_rat/Data/local/entity/string_list_converter.dart';

class Exercise extends Table {
  TextColumn get name => text().named('name')();
  TextColumn get force => text().named('force')();
  TextColumn get level => text().named('level')();
  TextColumn get mechanic => text().nullable().withDefault(const Constant('')).named('mechanic')();
  TextColumn get equipment => text().nullable().withDefault(const Constant('')).named('equipment')();
  TextColumn get primaryMuscles =>
      text().map(const StringListConverter()).named('primaryMuscles')();
  TextColumn get secondaryMuscles =>
      text().map(const StringListConverter()).named('secondaryMuscles')();
  TextColumn get instructions =>
      text().map(const StringListConverter()).named('instructions')();
  TextColumn get images =>
      text().map(const StringListConverter()).named('images')();

  TextColumn get category => text().named('category')();

  TextColumn get id => text().named('id')();
}



