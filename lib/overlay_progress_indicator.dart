library overlay_progress_indicator;

import 'package:flutter/material.dart';

class OverlayProgressIndicator {
  static OverlayState? overlayState;
  static OverlayEntry? overlay1;

  static Future<void> show({
    required BuildContext context,
    Color backgroundColor = Colors.black54,
    Widget child = const CircularProgressIndicator(),
  }) async {
    overlayState = Overlay.of(context);

    overlay1 = OverlayEntry(builder: (context) {
      return Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: backgroundColor,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              child,
            ],
          ),
        ),
      );
    });

    overlayState?.insertAll([overlay1!]);
  }

  static Future<void> hide() async {
    overlay1!.remove();
  }
}
