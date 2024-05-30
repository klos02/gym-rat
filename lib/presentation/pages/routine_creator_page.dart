import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:gym_rat/Data/local/db/app_db.dart';
import 'package:gym_rat/presentation/pages/add_exercise_muscle_select_page.dart';
import 'package:gym_rat/presentation/pages/selected_exercise_page.dart';

List<ExerciseData> exercises = [];
List<int> setsList = List.filled(20, 0);
Map<int, List<String>> setsOptions = {};

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
  late List<ExerciseData> _exercises = [];
  int _setsCount = 1;

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

  void _showOptionsDialog(int exerciseIndex, int setIndex) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Select Option"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                title: Text("Failure"),
                onTap: () {
                  setState(() {
                    setsOptions[exerciseIndex]![setIndex] = 'F';
                  });
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Text("Warm up"),
                onTap: () {
                  setState(() {
                    setsOptions[exerciseIndex]![setIndex] = 'W';
                  });
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Text("Dropset"),
                onTap: () {
                  setState(() {
                    setsOptions[exerciseIndex]![setIndex] = 'D';
                  });
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Text("Basic"),
                onTap: () {
                  setState(() {
                    setsOptions[exerciseIndex]![setIndex] = '';
                  });
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
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
                    labelText: AppLocalizations.of(context)!.routineName,
                  ),
                ),
                SizedBox(height: 16.0),
              ],
            ),
            Expanded(
              child: ListView.builder(
                physics: AlwaysScrollableScrollPhysics(),
                itemCount: _exercises.length,
                itemBuilder: (context, index) {
                  final exercise = _exercises[index];
                  final String imgPath =
                      'assets/images/exercises/' + exercise.images[0];

                  return Container(
                    margin: EdgeInsets.only(bottom: 16.0),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
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
                              style: TextStyle(color: Colors.black),
                            ),
                            trailing: IconButton(
                              icon: Icon(Icons.add),
                              onPressed: () {
                                setState(() {
                                  setsList[index]++;
                                  if (setsOptions[index] == null) {
                                    setsOptions[index] = [];
                                  }
                                  setsOptions[index]!.add('');
                                });
                              },
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
                            color: Colors.grey,
                            thickness: 1,
                            indent: 20,
                            endIndent: 20,
                          ),
                          SizedBox(height: 8),
                          ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: setsList[index],
                            itemBuilder: (context, innerIndex) {
                              return Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      _showOptionsDialog(index, innerIndex);
                                    },
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Center(
                                        child: Text(
                                          '${innerIndex + 1}${setsOptions[index]?[innerIndex] ?? ''}',
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Container(
                                    width: 40,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: 'Rep',
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 4.0),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Container(
                                    width: 60,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: 'Weight',
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 4.0),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                  innerIndex == setsList[index] - 1
                                      ? IconButton(
                                          icon: Icon(Icons.remove),
                                          onPressed: () {
                                            setState(() {
                                              setsList[index]--;
                                              setsOptions[index]!
                                                  .removeAt(innerIndex);
                                            });
                                          },
                                        )
                                      : SizedBox(width: 4),
                                ],
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AddExerciseMuscleSelectPage()),
                );
              },
              child: Text(AppLocalizations.of(context)!.addExercise),
            ),
          ],
        ),
      ),
    );
  }
}
