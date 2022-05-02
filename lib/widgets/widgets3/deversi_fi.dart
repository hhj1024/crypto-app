import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:io';

class Deversifi extends StatefulWidget {
const Deversifi({Key? key}) : super(key: key);
  @override
  _DeversifiState createState() => _DeversifiState();
}

class _DeversifiState extends State<Deversifi>{
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
          initialUrl: 'https://app.deversifi.com/',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
