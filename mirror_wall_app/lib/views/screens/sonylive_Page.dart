import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:mirror_wall_app/controller/fb_Controller.dart';
import 'package:provider/provider.dart';

class SonyLivePage extends StatelessWidget {
  const SonyLivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<fbController>(builder: (context, Provider, child) {
      return WillPopScope(
        onWillPop: () async {
          if (Provider.canback) {
            Provider.back();
          }
          return !Provider.canback;
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text("SONY LIVE"),
            backgroundColor: Colors.amber.shade900,
            centerTitle: true,
            actions: [
              Visibility(
                visible: Provider.cangoback,
                child: IconButton(
                  onPressed: () {
                    Provider.back();
                  },
                  icon: Icon(Icons.arrow_back_ios_sharp),
                ),
              ),
              IconButton(
                onPressed: () {
                  Provider.Refresh();
                },
                icon: Icon(Icons.refresh),
              ),
              Visibility(
                visible: Provider.cangoforward,
                child: IconButton(
                  onPressed: () {
                    Provider.forward();
                  },
                  icon: Icon(Icons.arrow_forward_ios_rounded),
                ),
              ),
            ],
          ),
          body: InAppWebView(
            initialUrlRequest: URLRequest(
              url: Uri.parse("https://www.sonyliv.com/"),
            ),
            onLoadStart: (controller, url) {
              return Provider.init(webviewController: controller);
            },
            onLoadStop: (controller, url) {
              return Provider.init(webviewController: controller);
            },
          ),
        ),
      );
    });
  }
}
