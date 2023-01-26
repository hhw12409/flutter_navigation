import 'package:flutter/material.dart';
import 'package:flutter_navigation/layout/main_layout.dart';
import 'package:flutter_navigation/screens/route_one_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Home Screen',
      children: [
        ElevatedButton(
          onPressed: () {
            // 더 이상 뒤로 갈 페이지가 없을 때 maybePop은 뒤로 가지지 않는다.
            Navigator.of(context).maybePop();
          },
          child: const Text('maybePop'),
        ),
        // []
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('pop'),
        ),
        ElevatedButton(
          onPressed: () async {
            final result = await Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => const RouteOneScreen(
                  number: 123,
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
