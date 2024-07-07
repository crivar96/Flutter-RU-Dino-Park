import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class FossilPark extends StatelessWidget {
  const FossilPark({super.key});

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: 'https://www.rowan.edu/fossils',
      appBar: AppBar(
        title: const Text('RU Fossil Park'),
      ),
      withZoom: true,
      withLocalStorage: true,
      hidden: true,
      initialChild: Container(
        color: Colors.white,
        child: const Center(
          child: Text('Loading...'),
        ),
      ),
    );
  }
}