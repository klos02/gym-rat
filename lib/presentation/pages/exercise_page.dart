import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:gym_rat/widgets/build_button_muscle_group.dart';


class ExercisePage extends StatefulWidget {
  const ExercisePage({super.key});

  @override
  State<ExercisePage> createState() => _ExercisePageState();
}

class _ExercisePageState extends State<ExercisePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          AppLocalizations.of(context)!.showExercises,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
       body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                children: [
                  buildButton(
                    context,
                    'assets/images/start_workout_button_img.jpg',
                    AppLocalizations.of(context)!.back,
                    'back'
                  ),
                  buildButton(
                    context,
                    'assets/images/show_workout_plans.jpg',
                    AppLocalizations.of(context)!.chest,
                    'chest'
                  ),
                  buildButton(
                    context,
                    'assets/images/exercises_button.jpg',
                    AppLocalizations.of(context)!.legs,
                    'legs'
                  ),
                  buildButton(
                    context,
                    'assets/images/start_workout_button_img.jpg',
                    AppLocalizations.of(context)!.shoulders,
                    'shoulders'
                  ),
                  buildButton(
                    context,
                    'assets/images/show_workout_plans.jpg',
                    AppLocalizations.of(context)!.triceps,
                    'triceps'
                  ),

                  buildButton(
                    context,
                    'assets/images/exercises_button.jpg',
                    AppLocalizations.of(context)!.biceps,
                    'biceps'
                  ),
                  buildButton(
                    context,
                    'assets/images/start_workout_button_img.jpg',
                    AppLocalizations.of(context)!.forearms,
                    'forearms'
                  ),
                  buildButton(
                    context,
                    'assets/images/show_workout_plans.jpg',
                    AppLocalizations.of(context)!.abdominals,
                    'abdominals'
                  ),

                  buildButton(
                    context,
                    'assets/images/exercises_button.jpg',
                    AppLocalizations.of(context)!.calves,
                    'calves'
                    
                  ),
                  
                ],
              ),
              
              
            ],
          ),
        ),
      ),
    );
  }
}
