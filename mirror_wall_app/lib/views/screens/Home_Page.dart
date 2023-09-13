import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:mirror_wall_app/utils/routsutils.dart';
import 'package:mirror_wall_app/views/screens/chrome_Page.dart';
import '../../utils/colorutils.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> titles = [
      "NETFLIX",
      "YELLOW",
      "BLACK",
      "CYAN",
      "BLUE",
      "GREY",
      "GREEN",
    ];

    final List Page = [
      NetflixPage(),
    ];

    final List<Widget> images = [
      Container(
        color: Colors.red,
      ),
      Container(
        color: Colors.yellow,
      ),
      Container(
        color: Colors.black,
      ),
      Container(
        color: Colors.cyan,
      ),
      Container(
        color: Colors.blue,
      ),
      Container(
        color: Colors.grey,
      ),
      Container(
        color: Colors.green,
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
                return Center(
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
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            onSelectedItem: (index) {
                              Navigator.of(context).pushNamed(MyRoutes.Netflix,
                                  arguments: Page[index]);
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
