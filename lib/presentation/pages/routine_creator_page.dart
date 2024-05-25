import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:gym_rat/Data/local/db/app_db.dart';
import 'package:gym_rat/presentation/pages/add_exercise_muscle_select_page.dart';
import 'package:gym_rat/presentation/pages/selected_exercise_page.dart';

List<ExerciseData> exercises = [];

Future<void> addExerciseToList(ExerciseData exercise) {
  exercises.add(exercise);
  for (ExerciseData ex in exercises) {
    print(ex.name + '___');
  }
  return Future.value();
}

class RoutineCreatorPage extends StatefulWidget {
  const RoutineCreatorPage({super.key});

  @override
  State<RoutineCreatorPage> createState() => _RoutineCreatorPageState();
}

class _RoutineCreatorPageState extends State<RoutineCreatorPage> {
  final TextEditingController _nameController = TextEditingController();
  late List<ExerciseData> _exercises = []; // Przechowuje wszystkie ćwiczenia

  @override
  void initState() {
    super.initState();
    updateList();
  }

  Future<void> updateList() async {
    setState(() {
      _exercises = exercises;
    });
  }

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
          AppLocalizations.of(context)!.createRoutine,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
                      labelText: AppLocalizations.of(context)!.routineName),
                ),
                SizedBox(height: 16.0),
                // ElevatedButton(
                //   onPressed: (){},
                //   child: Text('Save'),
                // ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                
                itemCount: _exercises.length,
                itemBuilder: (context, index) {
                  final exercise = _exercises[index];
                  final String imgPath =
                      'assets/images/exercises/' + exercise.images[0];

                  return Column(
                    children: [
                      ListTile(
                        leading: Container(
                          width: 50,
                          height: 50,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset(
                              imgPath,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        title: Text(
                          exercise.name,
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SelectedExercisePage(
                                exercise: exercise,
                              ),
                            ),
                          );
                        },
                      ),
                      Divider(
                        // Dodanie przedziałki
                        color: Colors.grey, // Kolor przedziałki
                        thickness: 1, // Grubość przedziałki
                        indent: 20, // Wcięcie początku przedziałki
                        endIndent: 20, // Wcięcie końca przedziałki
                      ),
                      SizedBox(height: 8), // Margines między elementami listy
                      
                      ListView.builder(
                        shrinkWrap:
                            true, 
                        itemCount: 1, 
                        itemBuilder: (context, innerIndex) {
                          return Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'Ilość powtórzeń',
                                  ),
                                ),
                              ),
                              IconButton(
                                icon: Icon(Icons.add),
                                onPressed: () {
                                  // Obsługa dodawania nowego ćwiczenia
                                },
                              ),
                            ],
                          );
                        },
                      ),
                    ],
                  );
                },
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                AddExerciseMuscleSelectPage()),
                      );
                    },
                    child: Text(AppLocalizations.of(context)!.addExercise),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
