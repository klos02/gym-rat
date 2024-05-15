import 'package:drift/drift.dart';
import 'package:gym_rat/Data/local/db/app_db.dart';
import 'dart:convert';
import 'package:gym_rat/Data/local/entity/exercise_entity.dart';
import 'package:path/path.dart' as path;
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:io';
import 'dart:async';

// Funkcja wczytująca dane z pliku JSON do bazy danych

Future<void> clearDatabase() async {
  final database = AppDb();
  await database.exercise.delete();
}



Future<void> loadExercisesToDb() async {
  // Sprawdź, czy dane już istnieją w bazie danych
  final database = AppDb();
  final count = await database.exercise.count().getSingle();
  
  print(count);
  if (count > 0) {
    // Jeśli dane już istnieją, nie wczytuj ich ponownie
    return;
  }

  // Załaduj zawartość pliku JSON
  String jsonString = await rootBundle.loadString('assets/exercises.json');
  // Przekształć dane JSON na listę obiektów Dart
  List<dynamic> jsonList = json.decode(jsonString);

  // Otwórz połączenie z bazą danych
  final db = AppDb();
  // Dodaj każdy obiekt JSON do bazy danych drift
  for (var jsonExercise in jsonList) {
    await db.into(db.exercise).insert(
      ExerciseCompanion(
        name: Value(jsonExercise['name']),
        force: Value(jsonExercise['force']),
        level: Value(jsonExercise['level']),
        mechanic: Value(''),
        equipment: Value(''),
        primaryMuscles: Value(jsonExercise['primaryMuscles']),
        secondaryMuscles: Value(jsonExercise['secondaryMuscles']),
        instructions: Value(jsonExercise['instructions']),
        category: Value(jsonExercise['category']),
        images: Value(jsonExercise['images']),
        id: Value(jsonExercise['id']),
      ),
    );
  }
}