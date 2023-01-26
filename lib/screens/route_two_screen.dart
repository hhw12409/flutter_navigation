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
          ElevatedButton(
            onPressed: () {
              // [HomeScreen, RouteOne, RouteTwo, RouteThree] push
              // [HomeScreen, RouteOne, RouteThree] pushReplacement
              // RouteTwo가 RouteThree로 replace된다.
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (_) => const RouteThreeScreen(),
                ),
              );
            },
            child: const Text('Push Replacement'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/three');
            },
            child: const Text('Push ReplacementNamed'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (_) => const RouteThreeScreen(),
                  ),
                  // false: 스택에 쌓인 스크린 전부 삭제, true는 모두 유지
                  (route) => false);
            },
            child: const Text('Push and Remove'),
          ),
        ],
      ),
    );
  }
}
