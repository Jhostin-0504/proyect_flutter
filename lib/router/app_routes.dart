import 'package:flutter/material.dart';

import 'package:proyect/models/models.dart';
import 'package:proyect/screens/screens.dart';

//rutas cambio de pagina
class AppRoutes {
  static const initialRoute = "home";
  static final menuOptions = <MenuOptions>[
    /*   MenuOptions(
        route: "home",
        name: "Home Screen",
        screen: const HomeScreen(),
        icon: Icons.adf_scanner_rounded),*/
    MenuOptions(
        route: "listView1",
        name: "Lista #1",
        screen: const Listview1Screen(),
        icon: Icons.list_alt_rounded),
    MenuOptions(
        route: "listView2",
        name: "Lista #2",
        screen: const Listview2Screen(),
        icon: Icons.list_rounded),
    MenuOptions(
        route: "alert",
        name: "Alert",
        screen: const AlertScreen(),
        icon: Icons.alarm_off),
    MenuOptions(
        route: "card",
        name: "Card",
        screen: const CardeScreen(),
        icon: Icons.style),
    MenuOptions(
        route: "avatar",
        name: "circle Avatar",
        screen: const AvatarScreen(),
        icon: Icons.supervised_user_circle_outlined),
    MenuOptions(
        route: "animacion",
        name: "Animated Container",
        screen: const AnimacionScreen(),
        icon: Icons.play_circle_outline_rounded),
    MenuOptions(
        route: "Inputs",
        name: "Input Text",
        screen: const InputsScreen(),
        icon: Icons.input_rounded),
    MenuOptions(
        route: "Slaider",
        name: "InfinitScrol",
        screen: const SlaiderScreen(),
        icon: Icons.slow_motion_video_outlined),
    MenuOptions(
        route: "ListViewBuilder",
        name: "Slaider screen",
        screen: const ListViewBuilderScreen(),
        icon: Icons.slow_motion_video_outlined)
  ];
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({"home": (BuildContext context) => const HomeScreen()});

    for (final options in menuOptions) {
      appRoutes
          .addAll({options.route: (BuildContext context) => options.screen});
    }

    return appRoutes;
  }

//static Map<String, Widget Function(BuildContext)> routes = {
  //'home': (context) => const HomeScreen(),
  //'listView1': (context) => const Listview1Screen(),
  //'listView2': (context) => const Listview2Screen(),
  //'alert': (context) => const AlertScreen(),
  //'card': (context) => const CardeScreen(),

}
