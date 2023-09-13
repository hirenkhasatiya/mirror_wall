import 'package:flutter/material.dart';
import 'package:mirror_wall_app/utils/routsutils.dart';
import 'package:mirror_wall_app/views/screens/chrome_Page.dart';

import 'views/screens/Home_Page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        MyRoutes.home: (context) => HomePage(),
        MyRoutes.Netflix: (context) => NetflixPage(),
      },
    );
  }
}
