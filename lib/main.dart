import 'package:flutter/material.dart';

import 'views/tabview_main.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, title: 'Material App', theme: ThemeData.dark(), home: const TabViewPage());
  }
}
