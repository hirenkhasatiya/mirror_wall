import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class SonyLivePage extends StatelessWidget {
  const SonyLivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SONY LIVE"),
        backgroundColor: Colors.amber.shade900,
        centerTitle: true,
      ),
      body: InAppWebView(
        initialUrlRequest: URLRequest(
          url: Uri.parse("https://www.sonyliv.com/"),
        ),
      ),
    );
  }
}
