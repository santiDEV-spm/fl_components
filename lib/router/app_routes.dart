import 'package:fl_components/models/models.dart';
import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'home',
        name: 'Home Screen',
        screen: HomeScreen(),
        icon: Icons.home),
    MenuOption(
        route: 'listview1',
        name: 'ListView tipo 1',
        screen: const ListView1Screen(),
        icon: Icons.list),
    MenuOption(
        route: 'listview2',
        name: 'ListView tipo 2',
        screen: const ListView2Screen(),
        icon: Icons.list_alt_outlined),
    MenuOption(
        route: 'alert',
        name: 'Alerts',
        screen: const AlertScreen(),
        icon: Icons.add_alert),
    MenuOption(
        route: 'card',
        name: 'Cards',
        screen: const CardScreen(),
        icon: Icons.credit_score),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (context) => option.screen});
    }
    return appRoutes;
  }

  /*
  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (context) => const HomeScreen(),
    'listview1': (BuildContext context) => const ListView1Screen(),
    'listview2': (context) => const ListView2Screen(),
    'alert': (context) => const AlertScreen(),
    'card': (context) => const CardScreen()
  };
  */

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}