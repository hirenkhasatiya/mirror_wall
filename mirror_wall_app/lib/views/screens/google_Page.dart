import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

import '../../utils/colorutils.dart';

class GooglePage extends StatelessWidget {
  const GooglePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: c1,
        title: const Text(
          "MY BROWSER",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 50,
            width: double.infinity,
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: InAppWebView(
                initialUrlRequest: URLRequest(
                    url: Uri.parse(
                        "https://www.google.co.in/search?q=fluuter&sca_esv=565257361&sxsrf=AM9HkKn0f5AgEeuNhTViYACJ2vFCtSP1JQ%3A1694672800027&source=hp&ei=n6cCZY-kPMPN-QbY3oe4Cw&iflsig=AO6bgOgAAAAAZQK1sIF2ep6ewmAtsrTELDwj4eHX3EGg&ved=0ahUKEwjP74OSvKmBAxXDZt4KHVjvAbcQ4dUDCAk&uact=5&oq=fluuter&gs_lp=Egdnd3Mtd2l6IgdmbHV1dGVyMgcQIxixAhgnMgcQIxixAhgnMgcQIxixAhgnMg4QABiKBRixAxiDARiRAjIKEAAYgAQYsQMYCjINEAAYgAQYsQMYgwEYCjINEAAYgAQYsQMYgwEYCjINEAAYgAQYsQMYgwEYCjIKEAAYgAQYsQMYCjINEAAYgAQYsQMYgwEYCki3nQFQ0I0BWPOZAXACeACQAQCYAdkBoAGsCqoBBTAuNS4yuAEDyAEA-AEBqAIKwgIHECMY6gIYJ8ICDRAuGMcBGNEDGOoCGCfCAhEQLhiABBixAxiDARjHARjRA8ICCxAAGIAEGLEDGIMBwgIFEAAYgATCAgsQABiKBRixAxiDAcICCBAuGIAEGLEDwgINEC4YxwEY0QMYigUYJ8ICBBAjGCfCAggQABiABBixA8ICBxAjGIoFGCfCAgcQABiABBgKwgIHEC4YgAQYCg&sclient=gws-wiz")),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
