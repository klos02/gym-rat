import 'package:flutter/material.dart';
import 'package:gym_rat/exercise_db_create.dart';
import 'package:gym_rat/presentation/Routes/generated_routes.dart';
import 'package:gym_rat/presentation/pages/home.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:gym_rat/l10n/l10n.dart';
import 'package:gym_rat/presentation/pages/settings_page.dart';






void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await loadExercisesToDb();
  //await clearDatabase();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  static const mainAppColor = Color.fromARGB(193, 31, 32, 32);

  @override
  State<MyApp> createState() => _MyAppState();


   static void setLocale(BuildContext context, Locale newLocale) {
    _MyAppState state = context.findAncestorStateOfType<_MyAppState>()!;
    state.setLocale(newLocale);
  }
  
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  late Locale _locale;

   void setLocale(Locale newLocale) {
    setState(() {
      _locale = newLocale;
    });
  }


  @override
  void initState() {
    super.initState();
    _locale = Locale('en');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: MyApp.mainAppColor,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: MyApp.mainAppColor,
          selectedItemColor: Colors.white,
        ),
        scaffoldBackgroundColor: MyApp.mainAppColor,
      ),
      debugShowCheckedModeBanner: false,
      supportedLocales: L10n.all,
      locale: _locale,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      initialRoute: '/',
      onGenerateRoute: RouteGenerator().generateRoute,
    );
  }
}
