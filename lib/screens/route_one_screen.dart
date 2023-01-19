import 'package:flutter/material.dart';
import 'package:flutter_navigation/layout/main_layout.dart';
import 'package:flutter_navigation/screens/route_two_screen.dart';

class RouteOneScreen extends StatelessWidget {
  final int? number;
  const RouteOneScreen({
    this.number,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Router One',
      children: [
        Text(
          number.toString(),
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop(number);
          },
          child: const Text('Pop'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => const RouteTwoScreen(),
                settings: const RouteSettings(
                  arguments: 789,
                ),
              ),
            );
          },
          child: const Text('Push'),
        ),
      ],
    );
  }
}
