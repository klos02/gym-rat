import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gym_rat/main.dart';
import 'package:gym_rat/widgets/app_bar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';
import 'package:gym_rat/presentation/pages/home.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppLocalizations.of(context)!.preferences,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10.0),
              ListTile(
                leading: Icon(
                  Icons.language,
                  color: Colors.white,
                ),
                title: Text(
                  AppLocalizations.of(context)!.langSettings,
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                onTap: () {
                  // Po naciśnięciu opcji języka wywołujemy funkcję showDialog
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      // Wewnątrz buildera tworzymy okienko dialogowe
                      return AlertDialog(
                        backgroundColor: MyApp.mainAppColor,
                        title: Text(
                          AppLocalizations.of(context)!.pickLang,
                          style: TextStyle(color: Colors.white),
                        ),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ListTile(
                              leading: CountryFlag.fromCountryCode(
                                'PL',
                                height: 20,
                                width: 26,
                              ),
                              title: Text(
                                'Polski',
                                style: TextStyle(color: Colors.white),
                              ),
                              onTap: () {
                                MyApp.setLocale(context, Locale('pl'));
                                Navigator.of(context).pop();
                                // Tutaj możesz dodać logikę zmiany języka
                              },
                            ),
                            ListTile(
                              leading: CountryFlag.fromCountryCode(
                                'GB',
                                height: 20,
                                width: 26,
                              ),
                              title: Text(
                                'English',
                                style: TextStyle(color: Colors.white),
                              ),
                              onTap: () {
                                MyApp.setLocale(context, Locale('en'));
                                Navigator.of(context).pop();
                                // Tutaj możesz dodać logikę zmiany języka
                              },
                            ),
                          ],
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pop(); // Zamknij okno dialogowe po naciśnięciu przycisku
                            },
                            child: Text(AppLocalizations.of(context)!.cancel, style: TextStyle(color: Colors.white),),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
                title: Text(
                  AppLocalizations.of(context)!.notifications,
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Switch(
                  value: _switchValue, // Wartość przełącznika
                  onChanged: (bool value) {
                    setState(() {
                      _switchValue = value;
                    });
                  },
                  activeColor: Colors.blueGrey[700],
                  inactiveTrackColor: Colors.white12,
                ),
              ),
              Divider(),
              Text(
                AppLocalizations.of(context)!.other,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10.0),
              ListTile(
                leading: Icon(
                  Icons.help,
                  color: Colors.white,
                ),
                title: Text(
                  AppLocalizations.of(context)!.help,
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                onTap: () {
                  // Obsługa pomocy
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  Icons.feedback,
                  color: Colors.white,
                ),
                title: Text(
                  AppLocalizations.of(context)!.opinion,
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                onTap: () {
                  // Obsługa opinii
                },
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
