import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:io';

class UniSwap extends StatefulWidget {
const UniSwap({Key? key}) : super(key: key);
  @override
  _UniSwapState createState() => _UniSwapState();
}

class _UniSwapState extends State<UniSwap>{
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
          initialUrl: 'https://app.uniswap.org/',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
