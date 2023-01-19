import 'package:flutter/material.dart';
import 'package:flutter_navigation/layout/main_layout.dart';
import 'package:flutter_navigation/screens/route_three_screen.dart';

class RouteTwoScreen extends StatelessWidget {
  const RouteTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      body: MainLayout(
        title: 'Route Two',
        children: [
          Text(
            'arguments: $arguments',
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Pop'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const RouteThreeScreen(),
                ),
              );
            },
            child: const Text('Push'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(
                '/three',
                arguments: 999,
              );
            },
            child: const Text('Push Named'),
          ),
        ],
      ),
    );
  }
}
