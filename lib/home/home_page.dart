import 'package:devfest_app/home/home_bloc.dart';
import 'package:devfest_app/home/home_screen.dart';
import 'package:devfest_app/universal/dev_scaffold.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    var _homeBloc = HomeBloc();
    return DevScaffold(
      title: "Devfest 2K20",
      body: HomeScreen(
        homeBloc: _homeBloc,
      ),
    );
  }
}
