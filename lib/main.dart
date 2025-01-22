import 'package:flutter/material.dart';

import 'pages/main_screen.dart';

void main() {
  runApp(const ShelfUI());
}

class ShelfUI extends StatelessWidget {
  const ShelfUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'shelfy_ui',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const MainScreen(),
      },
    );
  }
}
