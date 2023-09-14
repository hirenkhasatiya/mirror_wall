import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:mirror_wall_app/utils/routsutils.dart';
import 'package:mirror_wall_app/views/screens/google_Page.dart';
import 'package:mirror_wall_app/views/screens/netflix_Page.dart';
import '../../utils/colorutils.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> titles = [
      "NETFLIX",
      "ZEE5",
      "SONY LIVE",
      "GOOGLE",
      "MX PLAYER",
      "PRIME VIDEO",
      "JIO CINEMA",
    ];

    List Page = [
      MyRoutes.Netflix,
      MyRoutes.Zee5,
      MyRoutes.SonyLive,
      MyRoutes.Google,
      MyRoutes.MX,
      MyRoutes.Primevideo,
      MyRoutes.jiocinema
    ];
    final List<Widget> images = [
      Container(
        decoration: const BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                topRight: Radius.circular(20))),
      ),
      Container(
        decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                topRight: Radius.circular(20))),
      ),
      Container(
        decoration: BoxDecoration(
            color: Colors.amber.shade900,
            borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(20),
                topRight: Radius.circular(20))),
      ),
      Container(
        decoration: BoxDecoration(
            color: Colors.blue.shade900,
            borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(20),
                topRight: Radius.circular(20))),
      ),
      Container(
        decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                topRight: Radius.circular(20))),
      ),
      Container(
        decoration: BoxDecoration(
            color: Colors.grey.shade500,
            borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(20),
                topRight: Radius.circular(20))),
      ),
      Container(
        decoration: const BoxDecoration(
            color: Colors.pinkAccent,
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                topRight: Radius.circular(20))),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: c1,
        foregroundColor: Colors.white,
        title: const Text(
          "OTT Play",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            wordSpacing: 2,
          ),
        ),
      ),
      backgroundColor: c1,
      body: Center(
        child: StreamBuilder(
          stream: Connectivity().onConnectivityChanged,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              if (snapshot.data == ConnectivityResult.none) {
                return const Center(
                    child: Image(image: AssetImage("assets/images/error.gif")));
              } else {
                return Column(
                  children: [
                    Container(
                      height: 100,
                      width: double.infinity,
                      color: c1,
                      child: Center(
                          child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "LET'S START",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: c4),
                            ),
                            const TextSpan(text: "\t\tAND"),
                            TextSpan(
                              text: "\t\tENJOY",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: c4,
                              ),
                            ),
                          ],
                        ),
                      )),
                    ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: c3,
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(60),
                          ),
                        ),
                        child: VerticalCardPager(
                            titles: titles, // required
                            images: images, // required
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            onSelectedItem: (index) {
                              Navigator.of(context).pushNamed(Page[index]);
                            },
                            initialPage: 3, // optional
                            align: ALIGN.LEFT // optional
                            ),
                      ),
                    ),
                  ],
                );
              }
            } else {
              return const CircularProgressIndicator(
                color: Colors.indigo,
              );
            }
          },
        ),
      ),
    );
  }
}
