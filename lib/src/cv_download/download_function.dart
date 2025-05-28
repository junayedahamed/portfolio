// // ignore: deprecated_member_use, avoid_web_libraries_in_flutter
// import 'dart:html' as html;

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// class DownloadFunction extends ChangeNotifier {
//   Future<void> loadAssetAsBytes(String assetPath) async {
//     final data = await rootBundle.load(assetPath);

//     downloadCv(data.buffer.asUint8List(), "Resume.pdf");
//   }

//   void downloadCv(Uint8List bytes, String fileName) {
//     final blob = html.Blob([bytes]);
//     final url = html.Url.createObjectUrlFromBlob(blob);

//     html.AnchorElement(href: url)
//       ..download = fileName
//       ..click();

//     html.Url.revokeObjectUrl(url);
//   }
// }
