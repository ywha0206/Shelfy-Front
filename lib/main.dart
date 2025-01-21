import 'package:flutter/material.dart';

import 'pages/home/main_screen.dart';

void main() {
  runApp(ShelfUI());
}

class ShelfUI extends StatelessWidget {
  const ShelfUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'shelfy_ui',
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
