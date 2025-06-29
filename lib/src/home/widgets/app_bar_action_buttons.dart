import 'package:flutter/material.dart';

class AppBarActionButtons extends StatefulWidget {
  const AppBarActionButtons({
    super.key,
    required this.ontap,

    required this.fisrtText,
  });
  final VoidCallback ontap;
  final String fisrtText;

  @override
  State<AppBarActionButtons> createState() => _AppBarActionButtonsState();
}

class _AppBarActionButtonsState extends State<AppBarActionButtons> {
  // bool hovering = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      // onEnter: (event) {
      //   setState(() {
      //     hovering = true;
      //   });
      // },
      // onExit: (event) {
      //   // hoverfunc;
      //   setState(() {
      //     hovering = false;
      //   });
      // },
      child: GestureDetector(
        onTap: widget.ontap,
        child: Text(
          widget.fisrtText.toUpperCase(),
          style: TextStyle(fontSize: 13, fontWeight: FontWeight.w300),
        ),
      ),
    );
  }
}
