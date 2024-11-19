import 'package:flutter/material.dart';
import 'screens/map_screen.dart';

void main() {
  runApp(ExploreMapApp());
}

class ExploreMapApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Explore Map',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: MapScreen(),
    );
  }
}
