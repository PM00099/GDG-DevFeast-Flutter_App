import 'package:devfest_app/agenda/agenda_page.dart';
import 'package:devfest_app/faq/faq_page.dart';
import 'package:devfest_app/home/home_page.dart';
import 'package:devfest_app/map/map_page.dart';
import 'package:devfest_app/speakers/speakers_page.dart';
import 'package:devfest_app/sponsors/sponsor_page.dart';
import 'package:devfest_app/team/team_page.dart';
import 'package:devfest_app/utils/devfest.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'index.dart';

class ConfigPage extends StatefulWidget {
  @override
  _ConfigPageState createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  ConfigBloc configBloc;

  @override
  void initState() {
    super.initState();
    setupApp();
  }

  setupApp() {
    configBloc = ConfigBloc();
    configBloc.darkModeOn =
        Devfest.prefs.getBool(Devfest.darkModePref) ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      builder: (context) => configBloc,
      child: BlocBuilder<ConfigBloc, ConfigState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Google Devfest',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              //* Custom Google Font
              fontFamily: Devfest.google_sans_family,
              primarySwatch: Colors.red,
              primaryColor: configBloc.darkModeOn ? Colors.black : Colors.white,
              disabledColor: Colors.grey,
              cardColor: configBloc.darkModeOn ? Colors.black : Colors.white,
              canvasColor:
                  configBloc.darkModeOn ? Colors.black : Colors.grey[50],
              brightness:
                  configBloc.darkModeOn ? Brightness.dark : Brightness.light,
              buttonTheme: Theme.of(context).buttonTheme.copyWith(
                  colorScheme: configBloc.darkModeOn
                      ? ColorScheme.dark()
                      : ColorScheme.light()),
              appBarTheme: AppBarTheme(
                elevation: 0.0,
              ),
            ),
            home: HomePage(),
            routes: {
              HomePage.routeName: (context) => HomePage(),
              AgendaPage.routeName: (context) => AgendaPage(),
              SpeakerPage.routeName: (context) => SpeakerPage(),
              TeamPage.routeName: (context) => TeamPage(),
              SponsorPage.routeName: (context) => SponsorPage(),
              MapPage.routeName: (context) => MapPage(),
              FaqPage.routeName: (context) => FaqPage(),
            },
          );
        },
      ),
    );
  }
}
