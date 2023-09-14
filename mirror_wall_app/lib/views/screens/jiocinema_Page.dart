import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class JioCinemaPage extends StatelessWidget {
  const JioCinemaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JIO CINEMA"),
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
      ),
      body: InAppWebView(
        initialUrlRequest: URLRequest(
          url: Uri.parse("https://www.jiocinema.com/"),
        ),
      ),
    );
  }
}
