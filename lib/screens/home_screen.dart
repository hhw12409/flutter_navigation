import 'package:flutter/material.dart';
import 'package:flutter_navigation/layout/main_layout.dart';
import 'package:flutter_navigation/screens/route_one_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(title: 'Home Screen', children: [
      ElevatedButton(
        onPressed: () async {
          final result = await Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) => const RouteOneScreen(
                number: 123,
              ),
            ),
          );
          print(result);
        },
        child: const Text('Push'),
      ),
    ]);
  }
}
