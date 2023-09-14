import 'package:flutter/material.dart';
import 'package:mirror_wall_app/controller/fb_Controller.dart';
import 'package:mirror_wall_app/utils/routsutils.dart';
import 'package:mirror_wall_app/views/screens/ZEE5_Page.dart';
import 'package:mirror_wall_app/views/screens/jiocinema_Page.dart';
import 'package:mirror_wall_app/views/screens/netflix_Page.dart';
import 'package:mirror_wall_app/views/screens/primevideo_Page.dart';
import 'package:mirror_wall_app/views/screens/sonylive_Page.dart';
import 'package:mirror_wall_app/views/screens/MXPlayer_Page.dart';
import 'package:provider/provider.dart';
import 'views/screens/Home_Page.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => fbController(),
        ),
      ],
      child: const MyApp(),
    ),
  );
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
        MyRoutes.jiocinema: (context) => JioCinemaPage(),
        MyRoutes.Primevideo: (context) => PrimeVideoPage(),
        MyRoutes.SonyLive: (context) => SonyLivePage(),
        MyRoutes.MX: (context) => mxPlayerPage(),
        MyRoutes.Zee5: (context) => Zee5Page(),
      },
    );
  }
}
