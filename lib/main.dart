import 'package:flutter/material.dart';
import 'package:sensations/screens/explore_screen.dart';

import '/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
      routes: {
        ExploreScreen.routeName: (ctx) => const ExploreScreen(),
      },
    );
  }
}
