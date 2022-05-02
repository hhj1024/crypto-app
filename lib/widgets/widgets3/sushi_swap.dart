import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:io';

class SushiSwap extends StatefulWidget {
const SushiSwap({Key? key}) : super(key: key);
  @override
  _SushiSwapState createState() => _SushiSwapState();
}

class _SushiSwapState extends State<SushiSwap>{
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: WebView(
          initialUrl: 'https://app.sushi.com/',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
