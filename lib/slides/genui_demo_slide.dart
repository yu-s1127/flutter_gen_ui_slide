import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_genui_slide/widgets/genui_chat_page.dart';

class GenUiDemoSlide extends FlutterDeckSlideWidget {
  const GenUiDemoSlide({super.key})
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/genui-demo',
          title: 'GenUI デモ',
        ),
      );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return .split(
      theme: .dark().copyWith(
        splitSlideTheme: const FlutterDeckSplitSlideThemeData(
          leftBackgroundColor: Colors.black,
          leftColor: Colors.white,
          rightBackgroundColor: Color(0xFF1E1E1E),
          rightColor: Colors.white,
        ),
      ),
      splitRatio: const SplitSlideRatio(left: 1, right: 2),
      leftBuilder: (_) => const Center(
        child: Text('デモ', style: TextStyle(fontSize: 60, fontWeight: .bold)),
      ),
      rightBuilder: (_) => const ClipRect(
        child: GenUiChatPage(
          title: 'なぞなぞ',
          apiKey: String.fromEnvironment('GEMINI_API_KEY'),
        ),
      ),
    );
  }
}
