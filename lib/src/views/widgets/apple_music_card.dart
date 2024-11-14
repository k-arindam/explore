// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:ui_web' as ui;
import 'dart:html' as html;

import 'package:explore/src/common/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppleMusicCard extends StatefulWidget {
  const AppleMusicCard({super.key});

  @override
  State<AppleMusicCard> createState() => _AppleMusicCardState();
}

class _AppleMusicCardState extends State<AppleMusicCard> {
  final html.HtmlElement _iFrameElement = html.IFrameElement()
    ..style.border = "none"
    ..style.width = "100%"
    ..style.height = "450"
    ..style.maxWidth = "660"
    ..allow = "autoplay *; encrypted-media *;"
    ..src = Constants.kAppleMusicURL;

  @override
  void initState() {
    super.initState();
    ui.platformViewRegistry.registerViewFactory(
      "iframeElement",
      (id) => _iFrameElement,
      isVisible: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      return Container(
        height: 450,
        constraints: const BoxConstraints(maxWidth: 660),
        alignment: Alignment.center,
        child: const HtmlElementView(viewType: "iframeElement"),
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
