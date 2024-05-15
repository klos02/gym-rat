import 'package:flutter/material.dart';
import 'package:gym_rat/Data/local/db/app_db.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:gym_rat/widgets/build_exercise_detail.dart';

class SelectedExercisePage extends StatelessWidget {
  final ExerciseData exercise;

  const SelectedExercisePage({required this.exercise});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          exercise.name,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Górna część strony z dwoma obrazami ćwiczenia
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/images/exercises/${exercise.images[0]}',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/images/exercises/${exercise.images[1]}',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            // Pozostała zawartość strony, np. nazwa ćwiczenia, instrukcje, itp.
            // Tutaj możesz dodać pozostałe informacje o ćwiczeniu
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildExerciseDetail(
                    title: AppLocalizations.of(context)!.primaryMuscles,
                    content: exercise.primaryMuscles.join(", "),
                  ),
                  buildExerciseDetail(
                    title: AppLocalizations.of(context)!.secondaryMuscles,
                    content: exercise.secondaryMuscles.join(", "),
                  ),
                  buildExerciseDetail(
                    title: AppLocalizations.of(context)!.force,
                    content: exercise.force,
                  ),
                  buildExerciseDetail(
                    title: AppLocalizations.of(context)!.instructions,
                    content: exercise.instructions.join("\n"),
                  ),
                ],
              ),
            ),

            // Tutaj możesz dodać instrukcje ćwiczenia, inne zdjęcia, itp.
          ],
        ),
      ),
    );
  }
}
