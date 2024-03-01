import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ContactusPage extends StatefulWidget {
  @override
  _ContactusPageState createState() => _ContactusPageState();
}

class _ContactusPageState extends State<ContactusPage> {
  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.disabled)
    ..loadRequest(Uri.parse('www.google.com'));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Contact us'),
          centerTitle: true,
        ),
        body: WebViewWidget(controller: controller));
  }
}
