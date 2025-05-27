import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:portfolio/src/home/state_manger/hover_state_manager.dart';

class AppBarActionButtons extends StatefulWidget {
  const AppBarActionButtons({
    super.key,
    required this.ontap,

    required this.fisrtText,
    required this.secText,
  });
  final VoidCallback ontap;
  final String fisrtText, secText;

  @override
  State<AppBarActionButtons> createState() => _AppBarActionButtonsState();
}

class _AppBarActionButtonsState extends State<AppBarActionButtons> {
  final HoverStateManager manager = HoverStateManager();
  bool hovering = false;
  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: manager,
      builder: (context, asyncSnapshot) {
        return MouseRegion(
          onEnter: (event) {
            setState(() {
              hovering = true;
            });
          },
          onExit: (event) {
            // hoverfunc;
            setState(() {
              hovering = false;
            });
          },

          child: GestureDetector(
            onTap: widget.ontap,
            child: Text(
              hovering ? '[ ${widget.secText} ]' : widget.fisrtText,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
            ),
          ),
        );
      },
    );
  }
}
