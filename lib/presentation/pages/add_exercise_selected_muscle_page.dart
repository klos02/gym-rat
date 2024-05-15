import 'package:flutter/material.dart';
import 'package:gym_rat/Data/local/db/app_db.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:gym_rat/presentation/pages/routine_creator_page.dart';
import 'package:gym_rat/presentation/pages/selected_exercise_page.dart';

class AddExerciseSelectedMuscleGroupPage extends StatefulWidget {
  final String message;
  final String muscleGroup;

  AddExerciseSelectedMuscleGroupPage(
      {required this.message, required this.muscleGroup});

  @override
  State<AddExerciseSelectedMuscleGroupPage> createState() =>
      _AddExerciseSelectedMuscleGroupPageState();
}

class _AddExerciseSelectedMuscleGroupPageState
    extends State<AddExerciseSelectedMuscleGroupPage> {
  String _searchText = ''; // Przechowuje wpisany tekst wyszukiwania
  late List<ExerciseData> _exercises = []; // Przechowuje wszystkie ćwiczenia
  List<int> _selectedIndexes = [];

  @override
  void initState() {
    super.initState();
    // Pobierz ćwiczenia i zapisz je w _exercises
    fetchExercises();
  }

  Future<void> fetchExercises() async {
    List<ExerciseData> exercises = [];
    if (widget.message == 'back') {
      exercises = await AppDb()
          .fetchExercisesByMultipleMuscles(['lats', 'back', 'traps']);
    } else if (widget.message == 'legs') {
      exercises = await AppDb().fetchExercisesByMultipleMuscles(
          ['abductors', 'adductors', 'hamstrings', 'glutes', 'quadriceps']);
    } else {
      exercises = await AppDb().fetchExercisesByMuscle(widget.message);
    }
    setState(() {
      _exercises = exercises;
    });
  }

  @override
  Widget build(BuildContext context) {
    int i = 0;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          widget.muscleGroup,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: AppLocalizations.of(context)!.searchExercises,
                hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(Icons.search, color: Colors.grey),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide.none,
                ),
              ),
              onChanged: (value) {
                setState(() {
                  _searchText = value
                      .toLowerCase(); // Aktualizuje wpisany tekst wyszukiwania
                });
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _exercises.length,
              itemBuilder: (context, index) {
                final exercise = _exercises[index];
                final String imgPath =
                    'assets/images/exercises/' + exercise.images[0];

                // Filtruj ćwiczenia na podstawie wpisanego tekstu wyszukiwania
                if (_searchText.isNotEmpty &&
                    !exercise.name.toLowerCase().contains(_searchText)) {
                  return Container(); // Jeśli nie pasuje do wyszukiwania, ukryj element
                }
                final isButtonDisabled = _selectedIndexes.contains(index);
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
                      trailing: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          backgroundColor:
                              isButtonDisabled ? Colors.white : Colors.white12,
                        ),
                        onPressed: isButtonDisabled
                            ? null
                            : () {
                                addExerciseToList(exercise);
                                setState(() {
                                  _selectedIndexes.add(index);
                                });
                              },
                        child: Icon(
                          isButtonDisabled ? Icons.check : Icons.add,
                          color: Colors.white,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SelectedExercisePage(
                                      exercise: exercise,
                                    )));
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
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
