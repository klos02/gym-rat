import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/extensions/native.dart';
import 'package:gym_rat/Data/local/entity/exercise_entity.dart';
import 'package:gym_rat/Data/local/entity/workout_plan_entity.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;
import 'package:drift/native.dart';
import 'package:gym_rat/Data/local/entity/specific_workout_entity.dart';
import 'package:gym_rat/Data/local/entity/exercise_data_entity.dart';
import 'package:gym_rat/Data/local/entity/string_list_converter.dart';


part 'app_db.g.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(path.join(dbFolder.path, 'exercise.sqlite'));

    return NativeDatabase(file);
  });
}

@DriftDatabase(tables: [Exercise, WorkoutPlan, SpecificWorkout, ExerciseDetails])
class AppDb extends _$AppDb {
  AppDb() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<List<ExerciseData>> getExercises() async {
    return await (select(exercise)..distinct).get();
  }
  
  Future<List<ExerciseData>> fetchExercisesByMuscle(String muscle) async {
    return await (select(exercise)..distinct
          ..where((tbl) => tbl.primaryMuscles.contains(muscle)))
        .get();
  }
  
  Future<List<ExerciseData>> fetchExercisesByMultipleMuscles(List<String> muscles) async {
    return await (select(exercise)..distinct
          ..where((tbl) => tbl.primaryMuscles.isIn(muscles)))
        .get();
  }

  Future<void> deleteDatabase() async {
    delete(exercise).go();
  }
}
