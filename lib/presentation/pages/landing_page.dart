import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:gym_rat/Business_Logic/bloc/landing_page_bloc.dart';
import 'package:gym_rat/main.dart';
import 'package:gym_rat/presentation/pages/home.dart';
import 'package:gym_rat/presentation/pages/settings_page.dart';
import 'package:gym_rat/presentation/pages/workout_page.dart';
import 'package:gym_rat/widgets/app_bar.dart';
import 'package:gym_rat/presentation/pages/workout_page.dart';

List<Widget> bottomNavScreen = <Widget>[
  HomePage(),
  WorkoutPage(),
  SettingsPage(),
];

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LandingPageBloc, LandingPageState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: appBar(),
          //body: Center(child: bottomNavScreen.elementAt(state.tabIndex)),
          body: IndexedStack(
            index: state.tabIndex,
            children: bottomNavScreen,
          ),
          bottomNavigationBar: AnimatedBottomNavigationBar(
            icons: [
              Icons.home_filled,
              Icons.fitness_center_rounded,
              Icons.settings
            ],

            activeIndex: state.tabIndex,
            gapLocation: GapLocation.none,
            backgroundColor: MyApp.mainAppColor,
            notchSmoothness: NotchSmoothness.softEdge,
            splashRadius: 10,
            activeColor: Colors.white,
            iconSize: 30,
            scaleFactor: 1.5,

            //elevation: 2,
            //blurEffect: true,

            onTap: (index) {
              BlocProvider.of<LandingPageBloc>(context)
                  .add(TabChange(tabIndex: index));
            },
          ),
        );
      },
    );
  }
}
