import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:ui_web' as ui_web;
// ignore: avoid_web_libraries_in_flutter, deprecated_member_use
import 'dart:html' as html;

import 'package:gap/gap.dart';

class GeminiGenuiSlide extends FlutterDeckSlideWidget {
  const GeminiGenuiSlide({super.key})
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/gemini-genui',
          title: 'gemini_genui',
        ),
      );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.custom(
      builder: (context) => const _GeminiGenUiContent(),
    );
  }
}

class _GeminiGenUiContent extends StatefulWidget {
  const _GeminiGenUiContent();

  @override
  State<_GeminiGenUiContent> createState() => _GeminiGenUiContentState();
}

class _GeminiGenUiContentState extends State<_GeminiGenUiContent> {
  final String _viewId =
      'twitter-embed-${DateTime.now().millisecondsSinceEpoch}';

  @override
  void initState() {
    super.initState();

    if (kIsWeb) {
      // ignore: undefined_prefixed_name
      ui_web.platformViewRegistry.registerViewFactory(_viewId, (int viewId) {
        final iframe = html.IFrameElement()
          ..style.border = 'none'
          ..style.height = '100%'
          ..style.width = '100%'
          ..srcdoc = _getEmbedHtml();
        return iframe;
      });
    }
  }

  String _getEmbedHtml() {
    return '''
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            margin: 0;
            padding: 20px;
            background-color: #000000;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }
        .twitter-container {
            max-width: 900px;
            width: 100%;
        }
    </style>
</head>
<body>
    <div class="twitter-container">
        <blockquote class="twitter-tweet" data-media-max-width="900">
            <p lang="en" dir="ltr">
                4/ Visual layout moves beyond text with an immersive, magazine-style view (photos + modules) that you can interact with to further customize your response.<br><br>
                Ask it to "plan a 3-day trip to Rome" and you get an explorable itinerary tailored to your preferences👇🏻
                <a href="https://t.co/pSJ3z9lNvQ">pic.twitter.com/pSJ3z9lNvQ</a>
            </p>
            &mdash; Sundar Pichai (@sundarpichai)
            <a href="https://twitter.com/sundarpichai/status/1990865945883996395?ref_src=twsrc%5Etfw">November 18, 2025</a>
        </blockquote>
        <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
    </div>
</body>
</html>
    ''';
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = FlutterDeckTheme.of(context).textTheme;

    return Column(
      children: [
        Text('Geminiアプリに搭載された生成UI', style: textTheme.title),
        Gap(24),
        Expanded(
          child: kIsWeb
              ? HtmlElementView(viewType: _viewId)
              : SizedBox.shrink(),
        ),
        Gap(8),
        Text(
          'https://x.com/sundarpichai/status/1990865945883996395',
          style: textTheme.bodySmall,
        ),
        Gap(24),
      ],
    );
  }
}
