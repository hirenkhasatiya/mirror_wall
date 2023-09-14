import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class Zee5Page extends StatelessWidget {
  const Zee5Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ZEE5"),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: InAppWebView(
        initialUrlRequest: URLRequest(
          url: Uri.parse("https://www.zee5.com/"),
        ),
      ),
    );
  }
}
