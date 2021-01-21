import 'package:best_flutter_app/src_flutterbestapps/config/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatelessWidget {
  final String urlLink;
  WebViewPage({this.urlLink});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       centerTitle: true,
       backgroundColor: Colors.black87,
       title: Text('Brows', style: TextStyles().browsLink,),
       ),
       body: WebViewContent(
         reciveLinkUrl: urlLink,
       ),
    );
  }
}

class WebViewContent extends StatelessWidget {
  final String reciveLinkUrl;
  WebViewContent({this.reciveLinkUrl});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: WebView(
          initialUrl: reciveLinkUrl,
        ),
      ),
    );
  }
}