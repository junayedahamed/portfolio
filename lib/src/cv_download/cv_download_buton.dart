import 'package:flutter/material.dart';
import 'package:portfolio/src/cv_download/download_function.dart';
import 'package:portfolio/src/home/widgets/button_names.dart';

class CvDownloadButon extends StatefulWidget {
  const CvDownloadButon({super.key, required this.ontap});
  final VoidCallback ontap;

  @override
  State<CvDownloadButon> createState() => _CvDownloadButonState();
}

class _CvDownloadButonState extends State<CvDownloadButon> {
  final DownloadFunction downloadFunction = DownloadFunction();
  double height = 48, width = 230, borderWidth = 1;
  // final File filePath = File("image/Resume.pdf");
  var fileName = "Resume";
  String assetPath = 'image/Resume.pdf';

  // Color color = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    final Brightness brightness = Theme.of(context).brightness;
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          height = 50;
          width = 250;
          borderWidth = 1.5;
        });
      },
      onExit: (event) {
        setState(() {
          setState(() {
            height = 48;
            width = 230;
            borderWidth = 1;
          });
        });
      },
      child: GestureDetector(
        onTap: () {
          // downloadFunction.loadAssetAsBytes(assetPath);
        },
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),

            border: Border.all(
              width: borderWidth,
              color: brightness == Brightness.dark
                  ? Colors.white
                  : Colors.black,
            ),
            gradient: borderWidth == 1.5 && brightness == Brightness.light
                ? LinearGradient(
                    colors: [
                      Colors.cyan.shade100,
                      Colors.blueAccent,
                      Colors.cyan.shade100,
                    ],
                  )
                : borderWidth == 1.5 && brightness == Brightness.dark
                ? LinearGradient(
                    colors: [Colors.white38, Colors.white60, Colors.black54],
                  )
                : null,
          ),
          child: Center(
            child: Text(
              textAlign: TextAlign.center,
              ButtonNames.downloadCv,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: brightness == Brightness.dark
                    ? Colors.white
                    : Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
