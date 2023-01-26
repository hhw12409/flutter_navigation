import 'package:flutter/material.dart';
import 'package:flutter_navigation/layout/main_layout.dart';
import 'package:flutter_navigation/screens/route_one_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // true - pop 가능
        // false - pop 불가능
        // 안드 자체에 있는 뒤로가기를 막을 수 있음.
        return false;
      },
      child: MainLayout(
        title: 'Home Screen',
        children: [
          ElevatedButton(
            onPressed: () {
              // pop가능 여부를 boolean값으로 불러준다.
              Navigator.of(context).canPop();
            },
            child: const Text('canPop'),
          ),
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
      ),
    );
  }
}
