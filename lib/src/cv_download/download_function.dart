import 'dart:developer';
// ignore: deprecated_member_use, avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:http/http.dart' as http;

class DownloadFunction extends ChangeNotifier {
  Future<void> loadAssetAsBytes(String assetPath) async {
    try {
      final data = await http.get(Uri.parse(assetPath));

      if (data.statusCode == 200) {
        final cvdata = data.bodyBytes;
        downloadCv(cvdata, "Resume.pdf");
      }
    } on Exception catch (e) {
      log(e.toString());
    }
  }

  void downloadCv(Uint8List bytes, String fileName) {
    final blob = html.Blob([bytes]);
    final url = html.Url.createObjectUrlFromBlob(blob);

    html.AnchorElement(href: url)
      ..download = fileName
      ..click();

    html.Url.revokeObjectUrl(url);
  }
}
