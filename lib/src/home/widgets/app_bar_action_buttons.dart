import 'package:flutter/material.dart';
import 'package:portfolio/src/home/state_manger/hover_state_manager.dart';

class AppBarActionButtons extends StatelessWidget {
  AppBarActionButtons({
    super.key,
    required this.ontap,
    required this.hoverfunc,
    required this.hoverState,
    required this.fisrtText,
    required this.secText,
  });
  final VoidCallback ontap, hoverfunc;
  final String fisrtText, secText;
  final bool hoverState;
  final HoverStateManager manager = HoverStateManager();
  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: manager,
      builder: (context, asyncSnapshot) {
        return MouseRegion(
          onEnter: (event) {
            hoverfunc;
          },
          onExit: (event) {
            hoverfunc;
          },
          child: GestureDetector(
            onTap: ontap,
            child: Text(
              hoverState ? fisrtText : '[ $secText ]',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
            ),
          ),
        );
      },
    );
  }
}
