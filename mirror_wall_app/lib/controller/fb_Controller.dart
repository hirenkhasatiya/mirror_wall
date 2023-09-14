import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class fbController extends ChangeNotifier {
  InAppWebViewController? webViewController;

  bool canback = false;
  bool canforward = false;

  checkAvailability() async {
    canback = await webViewController?.canGoBack() ?? false;
    canforward = await webViewController?.canGoForward() ?? false;
    notifyListeners();
  }

  get cangoback {
    checkAvailability();
    return canback;
  }

  get cangoforward {
    checkAvailability();
    return canforward;
  }

  back() {
    webViewController?.goBack();
    notifyListeners();
  }

  forward() {
    webViewController?.goForward();
    notifyListeners();
  }

  Refresh() {
    webViewController?.reload();
    notifyListeners();
  }

  init({required InAppWebViewController webviewController}) {
    this.webViewController = webviewController;
  }
}
