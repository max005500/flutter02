import 'package:flutter/material.dart';

import 'package:flutter02/models/models.dart';
import 'package:flutter02/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static const list1Route = 'listView1';
  static const list2Route = 'listview2';
  static const cardRoute = 'card';
  static const alertRoute = 'alert';
  static const avatarRoute = 'avatar';
  static const animatedRoute = 'animated';
  static const inputsRoute = 'inputs';
  static const sliderRoute = 'slider';
  static const listViewBuilderRoute = 'listviewbuilder';

  static final menuOption = <MenuOption>[
    MenuOption(
        route: list1Route,
        name: 'list View 1',
        screen: const ListView1Screen(),
        icon: Icons.list),
    MenuOption(
        route: list2Route,
        name: 'List View 2',
        screen: const ListView2Screen(),
        icon: Icons.list),
    MenuOption(
        route: cardRoute,
        name: 'Card',
        screen: const CardScreen(),
        icon: Icons.card_travel),
    MenuOption(
        route: alertRoute,
        name: 'Alerts',
        screen: const AlertScreen(),
        icon: Icons.alarm),
    MenuOption(
        route: avatarRoute,
        name: 'Avatar',
        screen: const AvatarScreen(),
        icon: Icons.supervised_user_circle),
    MenuOption(
        route: animatedRoute,
        name: 'Animated',
        screen: const AnimatedScreen(),
        icon: Icons.play_circle_outline_rounded),
    MenuOption(
        route: inputsRoute,
        name: 'Inputs',
        screen: const InputsScreen(),
        icon: Icons.input_sharp),
    MenuOption(
        route: sliderRoute,
        name: 'Slider',
        screen: const SliderScreen(),
        icon: Icons.slow_motion_video),
    MenuOption(
        route: listViewBuilderRoute,
        name: 'List View',
        screen: const ListViewBuilderScreen(),
        icon: Icons.build_circle_outlined),
  ];
  static Map<String, Widget Function(BuildContext)> routes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    // menuOption.map((option) => appRoutes
    //     .addAll({option.route: (BuildContext context) => option.screen}));
    appRoutes
        .addAll({initialRoute: (BuildContext context) => const HomeScreen()});
    for (var option in menuOption) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  //   'listView1': (BuildContext context) => const ListView1Screen(),
  //   'listview2': (BuildContext context) => const ListView2Screen(),
  // };
}
