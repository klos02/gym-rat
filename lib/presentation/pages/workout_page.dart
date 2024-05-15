import 'package:drift/drift.dart' as drift;
import 'package:flutter/material.dart';
import 'package:gym_rat/Data/local/db/app_db.dart';
import 'package:gym_rat/exercise_db_create.dart';
import 'package:gym_rat/presentation/pages/exercise_page.dart';
import 'package:gym_rat/presentation/pages/landing_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:gym_rat/Data/local/entity/exercise_entity.dart';
import 'package:gym_rat/presentation/pages/exercise_page.dart';
import 'package:gym_rat/presentation/pages/routines_page.dart';

Future<List<ExerciseData>> getFirstTenRecords() async {
  final database = AppDb();
  final exercises = await database.exercise.select().get();
  return exercises;
}

Future<void> printRecords() async {
  final firstTenRecords = await getFirstTenRecords();
  for (final exercise in firstTenRecords) {
    print(exercise);
  }
}

class WorkoutPage extends StatefulWidget {
  const WorkoutPage({super.key});

  @override
  State<WorkoutPage> createState() => _WorkoutPageState();
}

class _WorkoutPageState extends State<WorkoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage(
                      'assets/images/start_workout_button_img.jpg'), // Zdjęcie do tła
                  fit: BoxFit.cover,
                  //scale: 1.5,
                ),
              ),
              child: ElevatedButton(
                onPressed: () {
                  printRecords();
                  
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: Colors.black.withOpacity(0.05),
                  //primary: Colors.transparent, // Ustawienie koloru tła na transparentny
                  //onPrimary: Colors.white, // Kolor tekstu na biały
                ),
                child: Text(
                  AppLocalizations.of(context)!.startTraining,
                  style: const TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        blurRadius: 5.0,
                        color: Colors.black,
                        offset: Offset(3.0, 3.0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage(
                        'assets/images/show_workout_plans.jpg'), // Zdjęcie do tła
                    fit: BoxFit.cover,
                    //scale: 1.5,
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    //printRecords();
                    //AppDb().deleteDatabase();
                     Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RoutinesPage()),
                     );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    backgroundColor: Colors.black.withOpacity(0.05),
                    //primary: Colors.transparent, // Ustawienie koloru tła na transparentny
                    //onPrimary: Colors.white, // Kolor tekstu na biały
                  ),
                  child: Text(
                    AppLocalizations.of(context)!.showWorkoutPlans,
                    style: const TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          blurRadius: 5.0,
                          color: Colors.black,
                          offset: Offset(3.0, 3.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage(
                        'assets/images/exercises_button.jpg'), // Zdjęcie do tła
                    fit: BoxFit.cover,
                    //scale: 1.5,
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ExercisePage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    backgroundColor: Colors.black.withOpacity(0.05),
                    //primary: Colors.transparent, // Ustawienie koloru tła na transparentny
                    //onPrimary: Colors.white, // Kolor tekstu na biały
                  ),
                  child: Text(
                    AppLocalizations.of(context)!.showExercises,
                    style: const TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          blurRadius: 5.0,
                          color: Colors.black,
                          offset: Offset(3.0, 3.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              '',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            // Tutaj można dodać miejsce na wyświetlenie proponowanego treningu
            //Placeholder(), // Placeholder na potrzeby demonstracji
          ],
        ),
      ),
    );
  }
}
