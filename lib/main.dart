// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: public_member_api_docs

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(MaterialApp(home: WebViewApp()));

class WebViewApp extends StatefulWidget {
  @override
  WebViewAppState createState() => WebViewAppState();
}

class WebViewAppState extends State<WebViewApp> {
  final Completer<WebViewController> _controller = Completer<WebViewController>();

  @override
  void initState() {
    // 隐藏底部按钮栏
    //SystemChrome.setEnabledSystemUIOverlays ([SystemUiOverlay.top]);
    // 隐藏状态栏
    //SystemChrome.setEnabledSystemUIOverlays ([SystemUiOverlay.bottom]);
    // 隐藏状态栏和底部按钮栏
    SystemChrome.setEnabledSystemUIMode (SystemUiMode.manual, overlays: []);
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(builder: (BuildContext context) {
        return WebView(
          initialUrl: 'https://www.qq.com',
        );
      }),
    );
  }
}