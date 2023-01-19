import 'package:flutter/material.dart';
import 'package:flutter_navigation/screens/home_screen.dart';
import 'package:flutter_navigation/screens/route_one_screen.dart';
import 'package:flutter_navigation/screens/route_three_screen.dart';
import 'package:flutter_navigation/screens/route_two_screen.dart';

const HOME_ROUTE = '/';
const ONE_ROUTE = '/one';
const TWO_ROUTE = '/two';
const THREE_ROUTE = '/three';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HOME_ROUTE,
      routes: {
        HOME_ROUTE: (context) => const HomeScreen(),
        ONE_ROUTE: (context) => const RouteOneScreen(),
        TWO_ROUTE: (context) => const RouteTwoScreen(),
        THREE_ROUTE: (context) => const RouteThreeScreen()
      },
    );
  }
}
