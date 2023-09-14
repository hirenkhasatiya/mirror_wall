import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class mxPlayerPage extends StatelessWidget {
  const mxPlayerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MX PLAYER"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: InAppWebView(
        initialUrlRequest: URLRequest(
          url: Uri.parse("https://www.mxplayer.in/movies"),
        ),
      ),
    );
  }
}
