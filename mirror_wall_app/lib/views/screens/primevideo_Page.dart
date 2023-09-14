import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:mirror_wall_app/controller/fb_Controller.dart';
import 'package:provider/provider.dart';

class PrimeVideoPage extends StatelessWidget {
  const PrimeVideoPage({super.key});

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
            title: Text("PRIME VIDEO"),
            backgroundColor: Colors.grey.shade600,
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
              url: Uri.parse(
                  "https://www.primevideo.com/offers/nonprimehomepage/ref=dvm_pds_amz_in_as_s_b_brand91_mkw_c2cx4dk8-dc?mrntrk=pcrid_75660266285090_slid__pgrid_1210562684221763_pgeo_163534_x__ptid_kwd-75660435769684:loc-90"),
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
