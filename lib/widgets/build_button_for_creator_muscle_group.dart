import 'package:flutter/material.dart';
import 'package:gym_rat/presentation/pages/selected_muscle_group_page.dart';
import 'package:gym_rat/presentation/pages/add_exercise_selected_muscle_page.dart';

Widget buildButton(BuildContext context, String imagePath, String buttonText,
    String databasePrompt) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      image: DecorationImage(
        image: AssetImage(imagePath),
        fit: BoxFit.cover,
      ),
    ),
    child: ElevatedButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => AddExerciseSelectedMuscleGroupPage(
                      message: databasePrompt,
                      muscleGroup: buttonText,
                    )));
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        backgroundColor: Colors.black.withOpacity(0.05),
      ),
      child: Text(
        buttonText,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.white,
          shadows: [
            Shadow(
              blurRadius: 5.0,
              color: Colors.black,
              offset: Offset(3.0, 3.0),
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    ),
  );
}
